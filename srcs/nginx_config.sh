apt-get install nginx -y

mv  /srcs/default /etc/nginx/sites-available/default
mkdir /etc/nginx/ssl
chmod 700 /etc/nginx/ssl
mv /srcs/ssl* /etc/nginx/ssl/.
