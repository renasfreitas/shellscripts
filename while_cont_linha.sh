#!/bin/bash
# Criado por: Renã Freitas da cruz.
# Editado por:    Na data:
# Data: 06/05/2019
# Exercicio de aula para contar linhas
echo "Digite um numero:"
read num
i=0
while test $i -lt $num
do
  echo "linha $i"
i=$(( $i+1 ))
done
