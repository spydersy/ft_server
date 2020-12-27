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

apt install php php-fpm php-mysql -y
service php7.3-fpm start
mv ./srcs/index.php /var/www/html/.