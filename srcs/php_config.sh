# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    php_config.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/08 13:51:42 by abelarif          #+#    #+#              #
#    Updated: 2020/11/08 15:42:39 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

apt install -y php php-common
apt -y install php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath
# vi /etc/nginx/sites-available/default #conf nginx (add php)
mv /srcs/default /etc/nginx/sites-available/default
mv /srcs/index.php /var/www/html/.
service nginx start
rm -rf /var/www/html/index.html 
service php7.3-fpm start 
#mv index.php to ...