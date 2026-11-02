#!/bin/bash

cat $1 | \
 grep -oP "0x[0-9a-f]+: ([0-9a-f]+)" | \
 awk -F ': ' '{print $2}' | \
 fold -w2 | \
 paste -sd' '