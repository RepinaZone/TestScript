#!/bin/bash

COUNT=`grep OK /home/tester/result.sh | wc -l`
if ((COUNT == 9))
 then
  ./testok.sh 
 else
  ./testbad.sh 
fi


