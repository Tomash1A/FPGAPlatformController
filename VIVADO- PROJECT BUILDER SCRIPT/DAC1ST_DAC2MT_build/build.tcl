# build.tcl — creates the REV Vivado project for Avnet MicroZed 7020
# Block Design: DAC1ST125MHz_DAC2MT125MHz_wILA
# Usage: vivado -mode batch -source build.tcl -tclargs <path_to_build_folder>
# The build.bat wrapper passes the folder automatically.

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
set origin_dir [file normalize [lindex $argv 0]]

set design_name REV
set part        xc7z020clg400-1
set board       avnet.com:microzed_7020:part0:1.3

# ---------------------------------------------------------------------------
# Vivado version check
# ---------------------------------------------------------------------------
set version_required "2021.1"
set current_version  [version -short]
if { [string first $version_required $current_version] == -1 } {
    puts "ERROR: This project requires Vivado $version_required (you are running $current_version)."
    return 1
}

# ---------------------------------------------------------------------------
# Clean up any previous failed run
# ---------------------------------------------------------------------------
set proj_dir "$origin_dir/$design_name"
if { [file exists $proj_dir] } {
    puts "INFO: Removing previous project at $proj_dir"
    file delete -force $proj_dir
}

# ---------------------------------------------------------------------------
# Create project  (lives in <build_folder>/REV/)
# ---------------------------------------------------------------------------
create_project $design_name $proj_dir -part $part

set obj [current_project]
if { [catch {set_property board_part $board $obj}] } {
    puts "WARNING: Board part '$board' not found — continuing without it. Part is still $part."
}
set_property default_lib           xil_defaultlib $obj
set_property enable_vhdl_2008     1              $obj
set_property ip_cache_permissions  {read write}   $obj
set_property simulator_language    Mixed          $obj
set_property xpm_libraries         {XPM_CDC XPM_MEMORY} $obj

# ---------------------------------------------------------------------------
# HDL sources  (all in src/)
# ---------------------------------------------------------------------------
if {[string equal [get_filesets -quiet sources_1] ""]} {
    create_fileset -srcset sources_1
}

set hdl_files [list \
    [file normalize "$origin_dir/src/Adder16.vhd"] \
    [file normalize "$origin_dir/src/addr_control.vhd"] \
    [file normalize "$origin_dir/src/amp_controller.vhd"] \
    [file normalize "$origin_dir/src/interp4.vhd"] \
    [file normalize "$origin_dir/src/INTERLEAVE.v"] \
    [file normalize "$origin_dir/src/MT_interlace.v"] \
    [file normalize "$origin_dir/src/addr16_mod.vhd"] \
    [file normalize "$origin_dir/src/dds_config_ctrl.vhd"] \
    [file normalize "$origin_dir/src/simple_interleave.v"] \
]
add_files -norecurse -fileset [get_filesets sources_1] $hdl_files

# ---------------------------------------------------------------------------
# Constraints  (constrs/REV.xdc)
# ---------------------------------------------------------------------------
if {[string equal [get_filesets -quiet constrs_1] ""]} {
    create_fileset -constrset constrs_1
}

set xdc_file [file normalize "$origin_dir/constrs/REV.xdc"]
add_files -norecurse -fileset [get_filesets constrs_1] $xdc_file
set_property file_type XDC [get_files $xdc_file]
set_property target_constrs_file $xdc_file [get_filesets constrs_1]

# ---------------------------------------------------------------------------
# Synthesis run
# ---------------------------------------------------------------------------
if {[string equal [get_runs -quiet synth_1] ""]} {
    create_run -name synth_1 -part $part \
        -flow {Vivado Synthesis 2021} \
        -strategy "Vivado Synthesis Defaults" \
        -report_strategy {No Reports} \
        -constrset constrs_1
} else {
    set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
    set_property flow     "Vivado Synthesis 2021"     [get_runs synth_1]
}
current_run -synthesis [get_runs synth_1]

# ---------------------------------------------------------------------------
# Implementation run
# ---------------------------------------------------------------------------
if {[string equal [get_runs -quiet impl_1] ""]} {
    create_run -name impl_1 -part $part \
        -flow {Vivado Implementation 2021} \
        -strategy "Vivado Implementation Defaults" \
        -report_strategy {No Reports} \
        -constrset constrs_1 \
        -parent_run synth_1
} else {
    set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
    set_property flow     "Vivado Implementation 2021"     [get_runs impl_1]
}
set_property steps.write_bitstream.args.readback_file 0 [get_runs impl_1]
set_property steps.write_bitstream.args.verbose       0 [get_runs impl_1]
current_run -implementation [get_runs impl_1]

# ---------------------------------------------------------------------------
# Block design  (sources from final.tcl)
# ---------------------------------------------------------------------------
source [file normalize "$origin_dir/final.tcl"]

# Generate HDL wrapper
# Get the actual block design name (may differ from project name)
set bd_design_name [get_property NAME [current_bd_design]]
puts "INFO: Block design name is: $bd_design_name"

make_wrapper -files [get_files ${bd_design_name}.bd] -top

set wrapper [file normalize \
    "$origin_dir/$design_name/$design_name.srcs/sources_1/bd/$bd_design_name/hdl/${bd_design_name}_wrapper.v"]
add_files -norecurse $wrapper

set_property top ${bd_design_name}_wrapper [get_filesets sources_1]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

# Validate and save block design
close_bd_design [current_bd_design]
open_bd_design  [get_files ${bd_design_name}.bd]
validate_bd_design -force
save_bd_design

puts ""
puts "INFO: Project '$design_name' is ready."
puts "INFO: Block design: $bd_design_name"
puts "INFO: Open $origin_dir/$design_name/${design_name}.xpr in Vivado and click Generate Bitstream."
