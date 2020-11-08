# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/07 15:22:26 by abelarif          #+#    #+#              #
#    Updated: 2020/11/08 14:26:12 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster
EXPOSE		80 443
RUN			apt-get update						-y
RUN			apt-get upgrade						-y
RUN			apt-get install nginx wget unzip	-y

COPY		srcs/ /srcs

RUN			sh /srcs/php_config.sh
RUN			sh /srcs/mysql_config.sh
RUN			sh /srcs/wp_config.sh
