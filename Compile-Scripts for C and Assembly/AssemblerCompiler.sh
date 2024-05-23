#!/bin/bash

file="$1"
bname=$(basename -s .s "${file}")
arm-linux-gnueabihf-as -o "${bname}".o "${file}"
arm-linux-gnueabihf-gcc -o "${bname}" "${bname}".o
./${bname} ; echo $?

