#!/bin/bash
echo "Digite um IP para ser testado:"
read ip
ping $ip -c 1 >/dev/null;
if [ "$?" = "0" ] ;
then
	echo "conexao ativa";
else
	echo "conexao com problema"
fi
