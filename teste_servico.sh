#!/bin/bash
echo "Digite o nome do programa:"
read nome
teste=`ps -aux | grep $nome | grep -v grep`;
#echo $ps

if [ "$teste" ];
then 
echo "funcionando"
else
echo "nao esta funcionando"
fi 

