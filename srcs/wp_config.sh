wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv  wordpress /var/www/.
mv /srcs/wp-config.php /var/www/wordpress/.
cd /var/www/wordpress
# cp -r wordpress/* . 
mv /var/www/html/phpMyAdmin /var/www/wordpress/.
mysql -u root wp_DB < /srcs/wp_DB.sql

# mv ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
# mv wordpress/ ./var/www/html/.