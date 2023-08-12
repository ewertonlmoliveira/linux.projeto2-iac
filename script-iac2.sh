#!/bin/bash

echo "Atualizando o repositório e servidor"

apt-get update
apt-get upgrade -y

echo "Baixando e instalando Apache e Unzip"

apt-get install apache2 -y
apt-get install unzip -y

echo " Baixando arquivos da página via repositório GitHub e descompactando os arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Copiando arquivos para o diretório padrão Apache"

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Finalizando o script"

