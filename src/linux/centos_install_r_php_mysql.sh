#!/usr/bin/env bash
# require: Centos 7
# author: Jianfeng
# email: lee_jianfeng@openbiox.org
# license: Apache-2.0
# version: v0.1.0
# Script to install latest R, PHP, and MySQL using yum
yum install -y epel-release yum-utils
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum localinstall -y https://repo.mysql.com//mysql80-community-release-el7-1.noarch.rpm

yum-config-manager --enable epel-testing
yum-config-manager --enable remi-php73

yum install -y php php-fpm php-cli php-curl php-dom php-fileinfo php-gd php-json php-ldap php-mbstring php-mcrypt php-mysql php-opcache php-tokenizer php-xmlwriter php-zip
yum install -y R
yum install -y mysql-community-server

systemctl enable php-fpm
systemctl start php-fpm
systemctl enable mysqld
systemctl start mysqld

