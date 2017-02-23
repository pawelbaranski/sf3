#!/usr/bin/env bash

add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y git nginx

debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
apt-get install -y mysql-server

apt-get install -y php7.1-fpm \
                   php7.1-cli \
                   php7.1-mysql \
                   php7.1-curl \
                   php7.1-intl \
                   php7.1-sqlite3
