# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 08:05:37 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/17 20:05:29 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# The container OS must be alpine
FROM	alpine:latest

RUN		apk update
RUN		apk add openrc php7 php7-fpm php7-json php7-mysqli nginx supervisor

RUN		mkdir -p /var/run/php
RUN		mkdir -p /run/nginx
RUN		wget https://wordpress.org/latest.tar.gz
RUN		tar -xf latest.tar.gz
RUN		mv wordpress 			/var/www/wordpress

COPY	conf/php-fpm.conf		/etc/php7/php-fpm.conf
COPY	conf/wp-config.php		/var/www/wordpress/wp-config.php
COPY	conf/default.conf		/etc/nginx/conf.d/default.conf
COPY	conf/supervisord.conf	/etc/supervisord.conf

EXPOSE	5050

CMD		["usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

