#!/bin/bash
## Criado por Renã Freitas da Cruz
# data: 24/06/2019
# Prova G2

choice="$(zenity --width=400 --height=300 --list --radiolist --text "<b>Por Favor</b> Selecione uma opcao abaixo:" --hide-header --column "Buy" --column "Item" FALSE "1-Teste_Internet" FALSE "2-Teste_IP" FALSE "3-Agendar_Desligamento" FALSE "4-Mostrar_data" FALSE "5-Have-you-mooed-today?" FALSE "6-Realizar_backup" FALSE "7-Gerencia_servicos" False "Quit")"

  case $choice in

1|1-Teste_Internet)
ip=$(zenity --title="if_ping" --text "Digite um endereco para teste de conectividade:" --entry)
ping $ip -c 1 >/dev/null;
if [ "$?" = "0" ] ;
	then
	zenity --info --text "O $ip esta com Conexao ativa!"
	else
	zenity --info --text "O $ip esta com conexao apresentando problemas!"
	fi
	;;
	#automatizar o teste ao inves de questionar


2|2-Teste_IP)
ip=$(zenity --title="if_ping" --text "Digite um IP para teste" --entry)
ping $ip -c 1 >/dev/null;
if [ "$?" = "0" ] ;
        then
        zenity --width=400 --height=300 --info --text "O $ip esta com Conexao ativa!"
        else
        zenity --width=400 --height=300 --info --text "O $ip esta com conexao apresentando problemas!"
        fi
	;;

3|3-Agendar_Desligamento)
desliga=$(zenity --title="Shutdown" --text "Quantos segundos devera ser desligado?" --entry)
	shutdown -h $desliga     
	;;

4|4-Mostrar_data)
		data=$(date)
	zenity --width=400 --height=300 --info --title="Data de Hoje" --text="Hoje eh $data "
   ;;
   

5|5-Have-you-mooed-today?)
moo=$(apt-get moo)
zenity --width=400 --height=300  --info --title="Data de Hoje" --text="$moo"
;;

6|6-Realizar_backup)
origem=$(zenity --title="if_ping" --text "Caminho a ser feito backup" --entry)
destino=$(zenity --title="if_ping" --text "Onde sera salvo backup" --entry)
nome=$(zenity --title="if_ping" --text "Nome Arquivo" --entry)
zenity --width=400 --height=300 --title="teste" --text="tar -czvf $origem $destino/$nome"
	;;

7|7-Gerencia_servicos)
mood=$(zenity --title="if_ping" --text "Deseja parar ou reiniciar o servico?" --entry)
servico=$(zenity --title="if_ping" --text "Qual servico sera feito?" --entry)
if [ $mood == parar]
then 
	zenity --width=400 --height=300 --info --title="teste" --text /etc/init.d/$servico stop
else
	zenity --width=400 --height=300 --info --title="teste" --text /etc/init.d/$servico restart
fi
	;;
 esac
