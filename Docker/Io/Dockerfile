FROM debian:11.2
WORKDIR /Application

# Update & upgrade
RUN apt-get update && apt-get upgrade -y
RUN apt-get install init bash cron libzip-dev unzip wget nano php -y

# init
RUN mkdir -p /startup
COPY ./Docker/Io/Packages/init/start.php /usr/bin/start
COPY ./Docker/Io/Packages/init/init /usr/bin/init
COPY ./Docker/Io/Packages/init/startup/boot /startup/boot
RUN chmod +x /usr/bin/init
RUN chmod +x /usr/bin/start

### Composer V2 with self auto update
COPY ./Docker/Io/Packages/composer/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN composer self-update

# php extensions
RUN apt-get update
RUN apt-get install php-gd php-zip php-xml php-mysqli php-pdo php-sockets php-opcache php-mbstring php-curl -y
RUN a2enmod rewrite

# php-fpm for HTTP/2
RUN apt-get update && apt-get upgrade -y
RUN apt-get install php7.4-fpm -y
RUN mkdir -p /run/php
RUN a2enmod proxy_fcgi setenvif
RUN a2enconf php7.4-fpm
RUN a2dismod php7.4
RUN a2dismod mpm_prefork
RUN a2enmod mpm_event
RUN a2enmod http2
RUN service apache2 restart
RUN service php7.4-fpm restart

# Copy all into Application
COPY . /Application

# Enable PHP-Opcache
COPY ./Docker/Io/Packages/opcache/opcache.ini /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini

# Disable default site
RUN a2dissite 000-default.conf

COPY ./Docker/Io/Packages/crontab/crontab /etc/cron.d/default-crontab
RUN chmod 0644 /etc/cron.d/default-crontab
RUN crontab /etc/cron.d/default-crontab
RUN touch /var/log/cron.log

RUN mkdir -p /Application/Data
RUN chmod 777 /Application/Data
RUN chown www-data:www-data /Application/Data
RUN mkdir -p /Application/Host
RUN chmod 777 /Application/Host
RUN chown www-data:www-data /Application/Host

# Execute start script
RUN chmod +x /Application/start.sh
RUN sh /Application/start.sh

