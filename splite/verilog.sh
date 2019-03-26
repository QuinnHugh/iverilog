#!/bin/bash
if [ ! $1 ]; then  
       $1=' '  
fi
if [ $1 == 'install-iverilog']; then
    docker build -t iverilog:4 ./
fi
docker run --rm -v `pwd`:/root/verilog iverilog:4 $1
