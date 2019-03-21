#	server.sh v1.2.0
#	by Troy Mistica
#	Webserver und PHP installieren und Konfigurieren

# Install(+restart) Apache2 und php
apt-get update -y
apt-get -y install apache2
apt-get install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y

service apache2 restart 

# Reverse Proxy installieren
sudo apt-get install libapache2-mod-proxy-html
sudo apt-get install libxml2-dev
sudo a2enmod proxy
sudo a2enmod proxy_html
sudo a2enmod proxy_http