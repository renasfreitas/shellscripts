#!/bin/bash
echo "Digite um numero:"
read num
i=0
while test $i -lt $num
do
echo "linha $i"
i=$(( $i+1 ))
done


