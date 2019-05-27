#!/bin/bash
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
