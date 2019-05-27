#!/bin/bash
# Criado por: Renã Freitas da cruz.
# Editado por:    Na data:
# Data: 06/05/2019
# Exercicio de aula para criar um teste de conectividade usando o "if"

echo "Digite um IP para ser testado:"
read ip
ping $ip -c 1 >/dev/null;
if [ "$?" = "0" ] ;
then
	echo "conexao ativa";
else
	echo "conexao com problema"
fi
