# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/07 15:22:26 by abelarif          #+#    #+#              #
#    Updated: 2020/12/31 18:08:35 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster
EXPOSE		80 443

COPY		srcs/ /srcs
RUN         ./srcs/all.sh
CMD         ./srcs/services_start.sh && bash
