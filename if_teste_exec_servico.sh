#!/bin/bash
# Criado por: Renã Freitas da cruz.
# Editado por:    Na data:
# Data: 20/05/2019
# Exercicio de aula para testar se programa esta em execução
echo "Digite o nome do programa:"
read nome
teste=`ps -aux | grep $nome | grep -v grep`;
if [ "$teste" ];
then 
echo "funcionando"
else
echo "nao esta funcionando"
fi 
