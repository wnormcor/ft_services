# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 00:57:45 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/17 09:20:52 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# The container OS must be alpine
FROM		alpine:latest

# Update and upgrage needed packages
RUN			apk update

# Install ftps
RUN			apk add vsftpd
RUN			adduser -D -h /var/ftp admin
RUN			echo 'admin:admin' | chpasswd
RUN			rm -rf					/etc/vsftpd/vsftpd.conf
COPY		conf/vsftpd.conf		/etc/vsftpd/vsftpd.conf
RUN			mkdir -p				/var/log/ftp
EXPOSE		20 21 10100

# Your server should be able to use the SSL protocol.
RUN			apk add openssl
RUN			openssl req -x509 -nodes -days 365 -newkey rsa:1024 -subj /C=RU/ST=Moscow/L=Moscow/O=42/OU=wnormcor -keyout /etc/vsftpd/vsftpd.pem -out /etc/vsftpd/vsftpd.pem

# Start
ENTRYPOINT	[ "vsftpd" , "/etc/vsftpd/vsftpd.conf" ]
