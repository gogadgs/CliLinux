#!bin/bash

echo "Seção de Criação de diretorios: "
mkdir /publico 
mkdir /administracao
mkdir /vendas
mkdir /seguranca


echo "Seção de criação de grupos de usuários: "
groupadd Grupo_administracao
groupadd Grupo_vendas
groupadd Grupo_seguranca


echo "Seção de Criação de usuarios: "
useradd Douglas -m -s /bin/bash - p $(openssl passwd -crypt Senha123) -G Grupo_administracao
useradd Goga -m -s /bin/bash - p $(openssl passwd -crypt Senha123) -G Grupo_administracao
useradd Tony Stark -m -s /bin/bash - p $(openssl passwd -crypt Senha123) -G Grupo_administracao

useradd Viuva Negra -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Grupo_vendas
useradd Stev Rogers -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Grupo_vendas
useradd Peter Parker -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Grupo_vendas

useradd Nick Fury -m -s /bin/bash -p $(openssl passwd -crypt Senha123)-G Group_seguranca
useradd Coisa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Group_seguranca
useradd Suzy Storn -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Group_seguranca
  
echo "Seção de permissao dos diretorios : "
chwon Douglas:Grupo_administracao /administracao
chwon Douglas:Grupo_vendas /vendas
chwon Douglas:Grupo_seguranca /seguranca

chmod 770 /administracao
chmod 770 /vendas
chmod 770 /seguranca
chmod 777 /publico

echo "fim da execução do script"


