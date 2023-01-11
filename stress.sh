#!/bin/bash

#I2CBUSID=`i2cdetect -r -y -l | grep I801 | awk '{print $1}' | sed -e s'/i2c-//'
#
CORECOUNT=( $(cat /proc/cpuinfo | grep processor | wc -l) )
TOTALMEM=( $(dmidecode -t 17 | grep "Volatile Size: 8" | awk '{print $3*16}') )
#TOTALMEM=( $(dmidecode -t memory | grep "Size:" | awk '{print $2/1024}') )
MEMFREE="85"
TIMEOUT_SEC="1800"
TIMEOUT_HRS=( $(echo $TIMEOUT_SEC | awk '{print $1/60}') )
TIMEOUT_MIN=( $(echo $TIMEOUT_HRS | awk '{print $1}' ) )

echo -e "This system has: $CORECOUNT CPU core"
echo -e "This system has: $TOTALMEM G RAM"
echo -e "Stress test takes:" $MEMFREE"%" "of RAM (" $((TOTALMEM*MEMFREE/100))"G )"
echo -e "Stress-test scheduled time is $TIMEOUT_SEC seconds ($TIMEOUT_MIN  minutes)"

sleep 10
stress-ng --cpu $CORECOUNT --io 4 --vm 2 --vm-bytes "$MEMFREE"% --timeout $TIMEOUT_SEC
#
