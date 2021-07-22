# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/09 13:37:58 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/16 08:08:46 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update
RUN apk add influxdb
RUN apk add --no-cache --upgrade bash

VOLUME ["var/lib/"]
EXPOSE 8086

CMD influxd run -config /etc/influxdb.conf
