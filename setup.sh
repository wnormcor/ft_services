# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnormcor <wnormcor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/07 14:17:28 by wnormcor          #+#    #+#              #
#    Updated: 2020/11/18 18:06:59 by wnormcor         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# start minikube on virtualbox
echo "🇷🇺  🇷🇺  🇷🇺  > minikube start --vm-driver=virtualbox"
minikube start --vm-driver=virtualbox

# set env for build docker images in minikube
echo "🇷🇺  🇷🇺  🇷🇺  > eval $(minikube docker-env)"
eval $(minikube docker-env)

# start load balancer matallb in minikube and apply config of metallb
echo "🇷🇺  🇷🇺  🇷🇺  > minikube addons enable metallb"
minikube addons enable metallb
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/metallb.yaml"
kubectl apply -f srcs/metallb/metallb.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > minikube dashboard & sleep 5"
minikube dashboard & sleep 5

# build docker images & deployments
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t nginx srcs/nginx"
docker build -t nginx srcs/nginx
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t ftps srcs/ftps"
docker build -t ftps srcs/ftps
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t wordpress srcs/wordpress"
docker build -t wordpress srcs/wordpress
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t mysql srcs/mysql"
docker build -t mysql srcs/mysql
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t phpmyadmin srcs/phpmyadmin"
docker build -t phpmyadmin srcs/phpmyadmin
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t grafana srcs/grafana"
docker build -t grafana srcs/grafana
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t influxdb srcs/influxdb"
docker build -t influxdb srcs/influxdb
echo "🇷🇺  🇷🇺  🇷🇺  > docker build -t telegraf srcs/telegraf"
docker build -t telegraf srcs/telegraf

# start deployments
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/nginx/nginx.yaml"
kubectl apply -f srcs/nginx/nginx.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/ftps/ftps.yaml"
kubectl apply -f srcs/ftps/ftps.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/wordpress/wordpress.yaml"
kubectl apply -f srcs/wordpress/wordpress.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/mysql/mysql.yaml"
kubectl apply -f srcs/mysql/mysql.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml"
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/influxdb/influxdb.yaml"
kubectl apply -f srcs/influxdb/influxdb.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/grafana/grafana.yaml"
kubectl apply -f srcs/grafana/grafana.yaml
echo "🇷🇺  🇷🇺  🇷🇺  > kubectl apply -f srcs/telegraf/telegraf.yaml"
kubectl apply -f srcs/telegraf/telegraf.yaml
