#!/bin/bash
 
echo "digite um numero"
read num
i=1
 
while [ $i -lt 11 ]
do
        res=$[$num * $i]
        echo "$num x $i = $res"
        i=$[$i+1]
done
