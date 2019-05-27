#!/bin/bash
echo "Digite o nome do programa:"
read nome
teste=`ls /etc/init.d/$nome`;

if [ $teste ] 
then
$teste restart
else
apt-get install $teste

fi
