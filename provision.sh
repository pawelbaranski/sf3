#!/usr/bin/env bash

add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y git

apt-get install -y php5.6-cli \
                   php5.6-curl \
                   php5.6-intl \
                   php5.6-xml \
                   php5.6-zip \
                   php5.6-mbstring \
                   php5.6-sqlite3 \
                   php-xdebug

echo "export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[0;33m\]\w\[\033[m\]\$ '" >> /home/ubuntu/.bashrc
echo "export LS_COLORS='di=0;32:ln=0;36'" >> /home/ubuntu/.bashrc
echo "export VAGRANT=1" >> /home/ubuntu/.bashrc

