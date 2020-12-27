wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv  wordpress /var/www/html/.
mv /srcs/wp-config.php /var/www/html/wordpress/.

# mv ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
# mv wordpress/ ./var/www/html/.
