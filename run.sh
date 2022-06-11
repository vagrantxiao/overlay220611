#!/bin/bash -e
cd ydma/au50
./build.sh
cd au50_dfx_manual
source /opt/Xilinx/Vitis/2021.1/settings64.sh
make -j3
cd ../../../
cp ./ydma/au50/_x/link/int/ydma.xml ./dynamic_region.xml
cp ./ydma/au50/_x/link/vivado/vpl/prj/prj.runs/impl_1/dynamic_region.bit ./
./gen_xclbin_au50.sh dynamic_region.bit dynamic_region.xml dynamic_region.xclbin
