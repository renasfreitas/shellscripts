#!/bin/bash
echo "Digite um IP para testar:"
read ip
echo "Digite quantas vezes serah testado:"
read num

# for i in $(seq 1 5 100);
for i in $(seq 1 $num);
do 
ping $ip -c 1 >/dev/null;
if [ "$?" = "0" ] ;
then
	echo "conexao ativa";
else
	echo "conexao com problema"
fi

done


