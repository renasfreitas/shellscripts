#!/bin/bash
cont=0

while test "$1"
do 
cont=$((cont+1))
echo "Parametro $cont: $1"
shift

done

