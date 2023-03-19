echo "Atualizando Sistema...."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo "Baixando e Instalando Site...."
wget https://github.com/andersoncoimbra/MySite/archive/refs/heads/master.zip
unzip master.zip
cd MySite-master
cp -r * /var/www/html
echo "Fim do Script"