echo "Criando Diretorios...."
mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec

echo "Criando Grupos de Usuarios...."

groupadd GRP_ADMM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios...."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_ADMM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_ADMM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_ADMM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123456) -G GRP_SEC

echo "Especificando pemissões dos Diretorios...."

chown root:GRP_ADMM /adm
chown root:GRP_VEN /vem
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec
chmod 777 /publico

echo "Fim do Script"

