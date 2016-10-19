#!/bin/bash

#Este script foi feito por Fabricio Silva e Luis Tonaiser
#Este script server para mostrar a versão do sistema e se o sistema é 64 ou 32 bit
#Configurações basicas de Hardware

echo "digite o nome do usuario"
read user
echo "digite o ip da maquina"
read ip
echo "digite a porta do ssh"
read porta

#O comando "echo" imprime na tela a mensagem 
#Este comando captura a palavra digitada e transfere para a variavel

ssh $user@$ip -p $porta cat /etc/issue ; uname -m ; cat /proc/cpuinfo | head

#O comando "cat /etc/issue" mostra a versão que o ubunto se encontra
#O comando "uname -a" mostra se o sistema é 64 ou 32 bit
#O comando "cat /proc/cpuinfo" mostra as configuras de hardware da maquina
#O comando "head" mostra apenas o cabeçalho do comando anterior

