#!/bin/bash
### every exit != 0 fails the script

set -e
echo -e "\n------------------ startup of iverilog ------------------"

cd ~/verilog
echo -e "\n--------------------- compiling ---------------------"
iverilog -o $1 $2
echo -e "\n------------------- generading the wave -------------------"
vvp $1