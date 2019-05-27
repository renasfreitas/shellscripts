#!/bin/bash
# Criado por: Renã Freitas da cruz.
# Editado por:    Na data:
# Data: 20/05/2019
# Exercicio de aula para CASO um serviço esteja no ar, reiniciar ele

echo "Digite o nome do programa:"
read nome
teste=`ls /etc/init.d/$nome`;


if [ $teste ]
then
 	$teste restart
else
	echo "nao ha servico"

fi
