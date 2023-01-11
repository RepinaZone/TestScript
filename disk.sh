#!/bin/bash

number=0
for symbol in {a..i}
do
    disk="/dev/sd$symbol"
    let number++
    if ( test -b $disk )
    then
       # echo "Device" $number
       echo `hddtemp $disk `
    fi
done
