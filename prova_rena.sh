#!/bin/bash
echo "Escolha o que deseja fazer:"
echo "##########################"
echo "1- Teste disponibilidade de endereco:"
echo "2- Exibir conf de rede:"
echo "3- Contagem de linhas"
echo "4- Gerar backup de /etc:"
echo "5- Sair do script"
echo "##########################"
read opcao
case $opcao in
1|um)
echo "Digite um IP para testar:"
read ip
ping $ip -c 1 >/dev/null;
if [ "$?" = "0" ] ;
then
        echo "conexao ativa";
else
        echo "conexao com problema"
fi;;

2|dois)
ifconfig
;;
3|tres)
echo "Digite um numero:"
read num
i=0
while test $i -lt $num
do
echo "linha $i"
i=$(( $i+1 ))
done
;;

4|quatro)
tar -czvf /etc /root/back.tar.gz
;;
5|cinco)
exit
;;






esac
