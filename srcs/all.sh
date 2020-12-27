apt-get update && apt-get upgrade                   -y
# installation & configuration nginx    : 
sh ./srcs/nginx_config.sh

# installation & configuration php      :
sh ./srcs/php_config.sh

# installation & comfiguration mysql    :
sh ./srcs/mysql_config.sh
sh ./srcs/phpMyAdmin_config.sh
sh ./srcs/wp_config.sh
sh ./srcs/services_start.sh