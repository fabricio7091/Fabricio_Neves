#!/bin/bash

#Este script foi feito por Fabricio e Luis Tonaiser
#Este script serve para instalar o ssh no linux e mudar porta padrão

apt-get install openssh-server -y #comando para instalação do openssh 
sed -i "s/Port 22/Port 10000/g" /etc/ssh/sshd_config #troca da porta padrão do ssh de 22 para 1000
/etc/init.d/ssh restart #reinicialização do serviço
