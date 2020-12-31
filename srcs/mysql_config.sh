# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mysql_config.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/07 15:22:31 by abelarif          #+#    #+#              #
#    Updated: 2020/11/07 15:22:32 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

wget	https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
chmod	+x mysql-apt-config_0.8.15-1_all.deb
echo	'mysql-apt-config mysql-apt-config/select-server select mysql-5.7' | debconf-set-selections
DEBIAN_FRONTEND=noninteractive apt-get install ./mysql-apt-config_0.8.15-1_all.deb -y
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install mysql-server -y
chown -R mysql: /var/lib/mysql
service mysql start
mysql -u root -e "CREATE USER 'abelarif'@'localhost' IDENTIFIED BY 'abelarif';"
mysql -u root -e "CREATE DATABASE wp_DB;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wp_DB.* TO 'abelarif'@'localhost';"
mysql -u root -e "GRANT ALL PRIVILEGES ON * TO 'abelarif'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"