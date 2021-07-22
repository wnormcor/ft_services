# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 08:05:27 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/17 09:44:53 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# The container OS must be alpine
FROM	alpine:latest

RUN		apk update
RUN		apk add --no-cache --upgrade bash
RUN		apk --no-cache add ca-certificates
RUN		mkdir /etc/telegraf
RUN		wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz

RUN		tar -C . -xzf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN		chmod +x telegraf/*
RUN		cp telegraf/telegraf /usr/bin/
RUN		rm -rf /var/cache/apk/*
RUN		rm -rf *.tar.gz* telegraf/

COPY	conf/telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE	8085

CMD		exec /usr/bin/telegraf $@
