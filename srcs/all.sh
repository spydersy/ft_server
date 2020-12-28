apt-get update && apt-get upgrade -y
sh ./srcs/nginx_config.sh
sh ./srcs/php_config.sh
sh ./srcs/mysql_config.sh
sh ./srcs/phpMyAdmin_config.sh
sh ./srcs/wp_config.sh
sh ./srcs/services_start.sh