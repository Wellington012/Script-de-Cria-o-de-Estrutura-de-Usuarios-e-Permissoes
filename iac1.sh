#!/bin/bash
echo "criando diretorios..."
mkdir /Publico
mkdir /Adm
mkdir /Ven
mkdir /Sec

echo "criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."
useradd Joao -m -s /bin/bash -p $(openssl passwd Senha123)
useradd Maria -m -s /bin/bash -p $(openssl passwd Senha123)
useradd Jose -m -s /bin/bash -p $(openssl passwd Senha123)
useradd Wellington -m -s /bin/bash -p $(openssl passwd Senha123)
useradd Amanda -m -s /bin/bash -p $(openssl passwd Senha123)


echo "Adcionando usuarios ao grupos..."
usermod -G GRP_ADM Joao
usermod -G GRP_ADM Maria
usermod -G GRP_VEN Jose
usermod -G GRP_ADM Wellington
usermod -G GRP_SEC Amanda


echo " especificando permissoes dos diretorios..."
chown root:GRP_ADM /Adm
chown root:GRP_VEN /Ven
chown root:GRP_SEC /Sec

chmod 777 /Adm
chmod 777 /Ven
chmod 777 /Sec
chmod 777 /Publico

echo "Fim..."
