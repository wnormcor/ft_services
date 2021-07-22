# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 08:03:58 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/17 09:41:22 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# The container OS must be alpine
FROM	alpine:latest

RUN		apk update
RUN		apk add --no-cache --upgrade bash
RUN		apk --no-cache add ca-certificates
RUN		apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

RUN		mkdir						/usr/share/grafana/conf/provisioning/dashboards/ft_services

COPY	conf/ftps.json				/usr/share/grafana/conf/provisioning/dashboards/ft_services/ftps.json
COPY	conf/grafana.json			/usr/share/grafana/conf/provisioning/dashboards/ft_services/grafana.json
COPY	conf/influxdb.json			/usr/share/grafana/conf/provisioning/dashboards/ft_services/influxdb.json
COPY	conf/mysql.json				/usr/share/grafana/conf/provisioning/dashboards/ft_services/mysql.json
COPY	conf/nginx.json				/usr/share/grafana/conf/provisioning/dashboards/ft_services/nginx.json
COPY	conf/phpmyadmin.json		/usr/share/grafana/conf/provisioning/dashboards/ft_services/phpmyadmin.json
COPY	conf/telegraf.json			/usr/share/grafana/conf/provisioning/dashboards/ft_services/telegraf.json
COPY	conf/wordpress.json			/usr/share/grafana/conf/provisioning/dashboards/ft_services/wordpress.json

COPY	conf/datasource.yaml		/usr/share/grafana/conf/provisioning/datasources/datasource.yaml
COPY	conf/dashboard.yaml			/usr/share/grafana/conf/provisioning/dashboards/dashboard.yaml

EXPOSE	3000

WORKDIR /usr/share/grafana

CMD /usr/sbin/grafana-server web
