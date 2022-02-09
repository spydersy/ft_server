# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/07 15:22:26 by abelarif          #+#    #+#              #
#    Updated: 2020/12/31 19:07:24 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster
EXPOSE		80 443

COPY		srcs/ /srcs
RUN         ./srcs/all.sh
# CMD 		/usr/sbin/nginx -g "daemon off;"
ENTRYPOINT  bash /srcs/services_start.sh && tail -f /dev/null
