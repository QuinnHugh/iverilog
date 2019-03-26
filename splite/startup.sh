#!/bin/bash
### every exit != 0 fails the script

set -e
echo -e "\n------------------ startup of iverilog ------------------"

cd ~/verilog

echo -e "\n--------------------- compiling ---------------------"

find ./ -name "*.v" -exec iverilog -o $1 {} +
echo -e "compile completed"

echo -e "\n------------------- generading the wave -------------------"
vvp ./$1
echo -e "generation completed"