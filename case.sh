#!/bin/bash
# Criado por Renã Freitas da Cruz
# data: 06/05/2019
# Criar um menu com algumas opcoes usando o "if".
echo "Escolha o que deseja fazer:"
echo "##########################"
echo "1- Numero de usuarios:"
echo "2- Mostrar a data:"
echo "3- Mostrar espaco em disco"
echo "4- Espaco usado por /home:"
echo "##########################"
read opcao
case $opcao in
1|um)
wc -l /etc/passwd | awk '{print $1}' ;;

2|dois)
date ;;

3|tres)
#espaco= ´df -h´
#echo "$espaco";;
df -h;;

4|quatro)
du -csh /home;;

esac
