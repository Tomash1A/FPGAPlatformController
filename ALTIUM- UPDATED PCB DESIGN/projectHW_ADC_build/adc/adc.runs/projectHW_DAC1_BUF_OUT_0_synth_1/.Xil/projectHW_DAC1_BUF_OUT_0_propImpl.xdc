set_property SRC_FILE_INFO {cfile:c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/adc/adc.gen/sources_1/bd/projectHW/ip/projectHW_DAC1_BUF_OUT_0/projectHW_DAC1_BUF_OUT_0_ooc.xdc rfile:../../../adc.gen/sources_1/bd/projectHW/ip/projectHW_DAC1_BUF_OUT_0/projectHW_DAC1_BUF_OUT_0_ooc.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in]] 0.1
