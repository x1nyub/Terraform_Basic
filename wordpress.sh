#! /bin/bash
sudo su -
amazon-linux-extras enable docker
yum install -y docker
systemctl start docker
docker pull wordpress
docker run -itd --name wp1 -e WORDPRESS_DB_HOST=mydb.c9vvixuybqew.ap-northeast-2.rds.amazonaws.com -e WORDPRESS_DB_NAME=wordpress -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=It1 -p 80:80 wordpress