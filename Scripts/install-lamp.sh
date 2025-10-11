#!/bin/bash
set -x
set -e
# Actualizamos repositorios
 apt update
 apt upgrade -y
# Instalamos Apache
 apt install apache2 -y
# Instalamos PhP
 apt install php libapache2-mod-php php-mysql -y
 # Copiamos el archivo de configuracion de Apache
 cp ../conf/000-default.conf /etc/apache2/sites-available
# Instalamos MySQL
 apt install mysql-server -y
# Reiniciamos Apache
 systemctl restart apache2
 #copiamos nuestro archivo de prueba php a /var/www/html
 cp ../php/index.php /var/www/html