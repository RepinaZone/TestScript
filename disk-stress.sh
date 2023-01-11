#!/bin/bash

number=0
for symbol in {a..i}
do
    disk="/dev/sd$symbol"
    let number++
    if ( test -b $disk )
    then
        echo "Device" $number
        echo -e '\033[0;32m' `hddtemp $disk` '\033[0m'
    fi
done
S
