#!/bin/bash

apt-get install apache2 -y
#apt-get install mysql-server -y
echo -en "\n\n"
#apt-get install php7.0 php7.0-fpm php7.0-mysql -y
#have to press number 2 (America)
#enter twice
echo "2" | apt-get install php7.0 php7.0-fpm php7.0-mysql -y
echo -en "\n\n"
#press number 105 (newyork)
/etc/init.d/apache2 restart

apt-get install curl -y
apt-get -qq update 
apt-get -qq -y install curl

apt-get install php-curl -y

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
apt-get install php7.0-mbstring -y
#apt-get install php7.0-gd -y
apt-get install php-gd -y
apt-get install php-dom -y