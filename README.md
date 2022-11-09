# docker-debian-11

Base image of Debian 11.

Includes:
- bash
- cron
- unzip
- wget
- nano
- composer v2
- php 7.4 fpm
- apache2
- extensions:
  - php-gd 
  - php-zip 
  - php-xml 
  - php-mysqli 
  - php-pdo 
  - php-sockets 
  - php-opcache 
  - php-mbstring 
  - php-curl

It install r3m/framework on the machine

To start run cmd in the terminal:  

`r3m.io configure host create`  

It will ask for a "hostname", fill in: example.local or subdomain.example.local.  
For the first time it will ask for an e-mail address: any valid email address.  
it is running on port 2222.  
You can go to http://example.local:2222

If it ain't working you might need to add example.local to your host file.
