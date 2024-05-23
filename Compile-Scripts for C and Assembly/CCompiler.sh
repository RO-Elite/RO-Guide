#!/bin/bash

file="$1"
bname=$(basename -s .c "${file}")
gcc -o "${bname}" "${file}"
./${bname}

