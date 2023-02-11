#!/bin/bash

rm -r -f /home/*

echo "/criando pastas"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_ADM

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_ADM

useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_VEN

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_VEN

useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_VEN

useradd josefina -c "Josefina" -m  -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_SEC

useradd amanda -c "Amanda" -m  -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_SEC

useradd rogerio -c "Rogerio" -m  -s /bin/bash -p $(openssl passwd -6 senha@123) -G GRP_SEC

#adduser carlos GRP_ADM
#adduser maria GRP_ADM
#adduser joao GRP_ADM

#adduser debora GRP_VEN
#adduser sebastiana GRP_VEN
#adduser roberto GRP_VEN

#adduser josefina GRP_SEC
#adduser amanda GRP_SEC
#adduser rogerio GRP_SEC

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chgrp -v GRP_ADM /adm
chgrp -v GRP_VEN /ven
chgrp -v GRP_SEC /sec




 
