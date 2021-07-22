# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/15 17:40:52 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/16 08:45:08 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# The container OS must be alpine
FROM	alpine:latest

# Update and upgrage needed packages
RUN     apk update && apk upgrade

# You must set up a web server with Nginx, in only one docker container.
RUN     apk add nginx
RUN		mv /etc/nginx/conf.d/default.conf		/etc/nginx/conf.d/default.conf.orig
COPY	conf/nginx.conf 						/etc/nginx/conf.d/default.conf
RUN		mkdir -p /run/nginx
COPY	conf/index.html							/var/www/index.html
EXPOSE  80 443

# Your server should be able to use the SSL protocol.
RUN     apk add openssl
RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt -subj '/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=wnormcor'

# You must be able to access the nginx container by logging into SSH.
RUN		apk add openssh
RUN		adduser -D admin
RUN		echo "admin:admin" | chpasswd
RUN		echo "root:root" | chpasswd
RUN		/usr/bin/ssh-keygen -A
COPY	conf/ssh.conf					/etc/ssh/sshd_config
EXPOSE  22

# And process to manage nginx & ssh
RUN		apk add supervisor
COPY	conf/supervisor.conf			/etc/supervisord.conf

# By default "/bin/sh -c"
# if exec "docker run -i -t nginx bash" is equvalent "/bin/sh -c bash" 
ENTRYPOINT [ "/usr/bin/supervisord" , "-c", "/etc/supervisord.conf" ]

# При использовании CMD инструкции это так же, как если бы вы делали 
# docker run -i -t image-label <cmd>. <cmd> будет параметром точки входа
# В CMD Задает аргументы , которые будут подаваться в ENTRYPOINT .