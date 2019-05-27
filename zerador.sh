#!/bin/bash
echo "Digite um numero:"
read num

i=1
while test $num -gt 0
do
echo "contando $num"
num=$(( $num-$i ))
done
