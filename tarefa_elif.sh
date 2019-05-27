#!/bin/bash
echo "Digite um numero:"
read numero
if [ $numero -gt 0 ];
then 
echo "seu numero eh positivo"
elif [ $numero -lt 0 ];
then 
echo "Seu numero eh negativo"
else
#then
echo "seu numero eh zero"

fi
