#!/bin/bash
a=10
s=`expr $a % 2`
if [ $s == 0 ]
then
	echo number is even
else
	echo number is odd
fi
