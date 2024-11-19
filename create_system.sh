#!/bin/bash

#Projeto DIO - Linux Fundamentals

#create directories
mkdir /publico /adm /ven /sec

#create groups
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#assign groups to directories

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#change permissions of directories

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#create users
useradd carlos -c "Carlos ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "Joao ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Debora VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
