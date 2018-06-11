FROM php:7.0-apache
MAINTAINER Joy NDJAMA <joy.ndjama@gmail.com>
RUN mkdir /var/www/html/app
RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN apt-get update && apt-get install -y git

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
#RUN docker-php-ext-install mysql && docker-php-ext-enable mysql

RUN git clone https://github.com/joy-software/TODO.git /var/www/html/app


RUN a2enmod rewrite

#RUN service apache2 restart
#WORKDIR /etc/apache2/sites-available/
#RUN a2ensite todo.cloud

#EXPOSE 80

