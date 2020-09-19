# Download mysql configuration package using wget from official repository :
wget	https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb

# Change permission :
chmod	+x wget mysql-apt-config_0.8.15-1_all.deb

# Insert new values into the debconf database :
echo	'mysql-apt-config mysql-apt-config/select-server select mysql-5.7' | debconf-set-selections

# Install mysql configuration package without prompt (No interaction nedded) :
DEBIAN_FRONTEND=noninteractive apt-get install ./mysql-apt-config_0.8.15-1_all.deb -y

# Update environement :
apt-get update

# Install mysql server without prompt (No interaction nedded):
DEBIAN_FRONTEND=noninteractive apt-get install mysql-server -y

# Set "mysql" as owner of /var/lib/mysql:
chown -R mysql: /var/lib/mysql

# Start mysql Service :
service mysql start

# Create User named by 'abelarif and identified by 'abelarif' & restrict access to localhost :
mysql -u root --exectue "CREATE USER 'abelarif'@'localhost' IDENTIFIED BY 'abelarif';"

# Create DataBase named by wp_DB :
mysql -u root --exectue "CREATE DATABASE wp_DB;"

# Grant all access to the user :
mysql -u root --exectue "GRANT ALL PRIVILEGES ON wp_DB.* TO 'abelarif'@'localhost';"

# Reloads the grant tables in the mysql database enabling the changes to take effect \
# without reloading or restarting mysql service
mysql -u root --exectue "FLUSH PRIVILEGES;"
