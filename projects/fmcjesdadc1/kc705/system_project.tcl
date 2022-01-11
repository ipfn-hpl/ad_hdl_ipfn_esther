
source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl

puts "Generating Xdma IP Core"
source ./src/ip/xdma_8g2.tcl

adi_project fmcjesdadc1_kc705
adi_project_files fmcjesdadc1_kc705 [list \
  "../common/fmcjesdadc1_spi.v" \
  "./src/hdl/system_top.sv" \
  "system_constr.xdc" \
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "$ad_hdl_dir/library/common/ad_sysref_gen.v" \
  "$ad_hdl_dir/projects/common/kc705/kc705_system_constr.xdc" \
  "src/ip/xdma_8g2/xdma_8g2.xci" \
  "src/hdl/shapi_regs_v1.sv" \
  "src/hdl/shapi_stdrt_dev_inc.vh" \
  "src/constraints/pcie_xdma_kc705_x8g2.xdc" \
  "src/hdl/trigger_gen.v" ]

puts "Project created"
# adi_project_run fmcjesdadc1_kc705

