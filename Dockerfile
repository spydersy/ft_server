FROM		debian:buster
EXPOSE		80 443
RUN			apt-get update				-y
RUN			apt-get upgrade				-y
RUN			apt-get install nginx		-y
RUN			apt-get install wget unzip	-y
COPY		srcs/ /srcs
RUN			./srcs/ysql_config.sh
RUN			./srcs/php_config.sh
RUN			./srcs/wp_config.sh
