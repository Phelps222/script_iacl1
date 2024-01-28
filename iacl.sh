#!/bin/bash

echo "Aqui iniciaremos a criação de um Script com insersção de usuários, diretórios, grupos, trabalharemos também com permissões, inserções de usuários a grupos
definições de permissões de diretórios, de grupos, mudança de owners de certos diretórios..."

echo "Criação de grupos:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criação de diretórios:"

mkdir /publico
mkdir /sec
mkdir /ven
mkdir /adm 


echo "Criação de usuários grupo GRP_ADM:"

useradd carlos -c "Carlos Maia" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd maria -c "Maria Clara" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd joao -c "João Marcos" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM


echo "Criação de usuários do grupo GRP_VEN:"


useradd debora -c "Debora Carvalho" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd roberto -c "Roberto Matos" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN


echo "Criação dos usuários do grupo GRP_SEC:"

useradd josefina -c "Josefina Matias" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

useradd amanda -c "Amanda Carla" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

useradd rogerio -c "Rogerio Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC



echo "Especificando permissões dos diretórios e grupos criados:"


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim do script...."

