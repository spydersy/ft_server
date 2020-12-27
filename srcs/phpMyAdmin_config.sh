apt install -y php-json php-mbstring -y
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /usr/share/phpMyAdmin
cp -pr /usr/share/phpMyAdmin/config.sample.inc.php /usr/share/phpMyAdmin/config.inc.php
# vim /usr/share/phpMyAdmin/config.inc.php
mv /srcs/config.inc.php /usr/share/phpMyAdmin/.
mysql -u root < /usr/share/phpMyAdmin/sql/create_tables.sql;
mysql -u root -e "GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass';"
mysql -u root -e "FLUSH PRIVILEGES;"
mkdir /usr/share/phpMyAdmin/tmp
chmod 777 /usr/share/phpMyAdmin/tmp
chown -R www-data:www-data /usr/share/phpMyAdmin
mv /usr/share/phpMyAdmin /var/www/html/.