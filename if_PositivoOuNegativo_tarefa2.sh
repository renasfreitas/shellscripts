#!/bin/bash
# Criado por: Renã Freitas da cruz.
# Editado por:    Na data:
# Data: 06/05/2019
# Exercicio de aula para criar um teste de Positivo ou negativo usando o "if"
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
