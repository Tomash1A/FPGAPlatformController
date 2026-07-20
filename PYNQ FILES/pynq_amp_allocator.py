"""
Amplitude BRAM memory allocator — PYNQ version.

Verbatim port of PC_code/amp_allocator.py.  Pure Python, no changes needed.

Memory Layout (per amplitude BRAM, one per channel):
----------------------------------------------------
  0x000 – 0x0FF : Pointer table (64 entries × 4 bytes)
      Entry index = (profile_num[4:0] << 1) | (0=ON / 1=OFF)
      Entry value = ramp_start_addr >> 2   (hardware shifts <<2 on read-back)

  0x100 – ...   : Ramp data (dynamically allocated, back-to-back)
      Each ramp word : (num_steps[15:0] << 16) | (step_size[15:0])
      End marker      : 0x00000000

Example (Profile 0, ON transition, ramp starts at 0x100):
    pointer_addr  = 0x00
    pointer_value = 0x100 >> 2 = 0x40   ← stored value
    hardware reads 0x40, shifts <<2 → accesses 0x100 ✓
"""


class AmpMemoryAllocator:
    """
    Manages dynamic memory allocation for amplitude profiles in BRAM.

    One allocator per *channel* (not shared across channels).

    Attributes
    ----------
    next_free_address : int
        Next free byte address in the ramp-data region (starts at 0x100).
    allocations : dict
        (channel, profile_num, is_on) → byte address of ramp sequence.
    """

    def __init__(self):
        # Pointer table: 32 profiles × 2 transitions × 4 bytes = 256 bytes
        self.next_free_address = 0x100
        self.allocations: dict = {}   # (channel, profile, is_on) → byte_addr

    # ------------------------------------------------------------------
    # Core allocation
    # ------------------------------------------------------------------

    def reset(self):
        """Reset allocator to initial state (call after bram_init())."""
        self.next_free_address = 0x100
        self.allocations = {}

    def allocate_ramp_sequence(self, channel: int, profile_num: int,
                               is_on: bool, ramps: list) -> int:
        """
        Reserve space for *ramps* in the ramp-data region.

        Args:
            channel    : Channel number (1–4).
            profile_num: Profile number (0–31).
            is_on      : True → ON transition, False → OFF.
            ramps      : [(num_steps, step_size), …]

        Returns:
            Start byte address of the allocated block.
        """
        if not (0 <= profile_num <= 31):
            raise ValueError(f"Profile number must be 0–31, got {profile_num}")

        key = (channel, profile_num, is_on)
        space_needed = (len(ramps) + 1) * 4    # ramps + end-marker word

        start_addr = self.next_free_address
        self.allocations[key] = start_addr
        self.next_free_address += space_needed
        return start_addr

    # ------------------------------------------------------------------
    # Address helpers
    # ------------------------------------------------------------------

    def get_pointer_address(self, profile_num: int, is_on: bool) -> int:
        """
        Byte address of the pointer-table entry for (profile_num, is_on).

        Hardware index = profileaddr[4:0] || am_onoff
        Byte address   = index << 2
        """
        profile_5bit = profile_num & 0x1F
        index = (profile_5bit << 1) | (0 if is_on else 1)
        return index << 2

    def get_allocation(self, channel: int, profile_num: int,
                       is_on: bool) -> int | None:
        """Return the previously allocated start address, or None."""
        return self.allocations.get((channel, profile_num, is_on))

    def get_pointer_value(self, channel: int, profile_num: int,
                          is_on: bool) -> int | None:
        """
        Value to write to the pointer table (actual_addr >> 2).
        Hardware will shift left by 2 to recover the byte address.
        """
        addr = self.get_allocation(channel, profile_num, is_on)
        return None if addr is None else (addr >> 2)

    # ------------------------------------------------------------------
    # Diagnostics
    # ------------------------------------------------------------------

    def get_memory_usage(self) -> dict:
        """Return memory statistics dict."""
        total_size        = 0x10000                         # 64 KB
        pointer_table_sz  = 0x100
        used_ramp_data    = self.next_free_address - 0x100
        free_space        = total_size - self.next_free_address
        return {
            'pointer_table'        : pointer_table_sz,
            'ramp_data_used'       : used_ramp_data,
            'total_used'           : self.next_free_address,
            'free'                 : free_space,
            'utilization_percent'  : (self.next_free_address / total_size) * 100,
        }

    def print_allocation_map(self):
        """Print current memory allocation map."""
        sep = "=" * 80
        print(f"\n{sep}\nAMPLITUDE BRAM MEMORY ALLOCATION MAP\n{sep}")

        print("\nPointer Table (0x000–0x0FF):")
        print("  Ptr_Addr | Profile | Trans | Index  | am_onoff | Example Ramp→Value")
        print("  ---------|---------|-------|--------|----------|-------------------")
        for profile in range(min(4, 32)):
            for is_on in (True, False):
                index     = (profile << 1) | (0 if is_on else 1)
                byte_addr = self.get_pointer_address(profile, is_on)
                trans     = "ON " if is_on else "OFF"
                onoff_bit = '0' if is_on else '1'
                example_ramp  = 0x100 + (index * 8)
                example_value = example_ramp >> 2
                print(f"  0x{byte_addr:03X}    | {profile:7d} | {trans:5s} |"
                      f" 0b{index:06b} | {onoff_bit}        |"
                      f" 0x{example_ramp:04X}→0x{example_value:04X}")
        if 32 > 4:
            print("  … (profiles 4–31 follow same pattern)")

        print(f"\nRamp Data (0x100–0x{self.next_free_address - 1:04X}):")
        if not self.allocations:
            print("  (empty)")
        else:
            print("  Ramp_Addr | CH | Prof | Trans | Ptr_Addr | Ptr_Value (>>2)")
            print("  ----------|----|------|-------|----------|----------------")
            for (ch, prof, is_on), addr in sorted(self.allocations.items(),
                                                   key=lambda x: x[1]):
                trans     = "ON " if is_on else "OFF"
                ptr_addr  = self.get_pointer_address(prof, is_on)
                ptr_value = addr >> 2
                print(f"  0x{addr:04X}    | {ch:2d} | {prof:4d} | {trans:5s} |"
                      f" 0x{ptr_addr:03X}    | 0x{ptr_value:04X}")

        usage = self.get_memory_usage()
        print(f"\nMemory Usage:")
        print(f"  Pointer table : {usage['pointer_table']} bytes (0x000–0x0FF)")
        print(f"  Ramp data used: {usage['ramp_data_used']} bytes")
        print(f"  Total used    : {usage['total_used']} bytes"
              f" (0x{usage['total_used']:04X})")
        print(f"  Free          : {usage['free']} bytes")
        print(f"  Utilization   : {usage['utilization_percent']:.1f}%")
        print("\nHow it works:")
        print("  1. Hardware forms index : profileaddr[4:0] || am_onoff")
        print("  2. Hardware shifts <<2  → pointer-table byte address")
        print("  3. Hardware reads pointer value from BRAM")
        print("  4. Hardware shifts <<2  → ramp-data byte address")
        print("  5. Result: correct ramp data accessed!")
        print(f"{sep}\n")
