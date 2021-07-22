# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 08:05:08 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/17 09:42:20 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# The container OS must be alpine
FROM	alpine:latest

RUN		apk update
RUN		apk add mysql mysql-client openrc

COPY	conf/wordpress.sql		./wordpress.sql
COPY	conf/my.cnf				/etc/mysql/my.cnf
COPY	conf/start.sh			./start.sh
COPY	conf/init.sql			./init.sql

VOLUME	["/var/lib"]
EXPOSE	3306

CMD	./start.sh
