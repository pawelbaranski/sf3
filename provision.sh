#!/usr/bin/env bash

add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y git

apt-get install -y php7.1-fpm \
                   php7.1-cli \
                   php7.1-curl \
                   php7.1-intl \
                   php7.1-xml \
                   php7.1-sqlite3 \
                   php-xdebug

echo "export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[0;33m\]\w\[\033[m\]\$ '" >> /home/ubuntu/.bashrc
echo "export LS_COLORS='di=0;32:ln=0;36'" >> /home/ubuntu/.bashrc