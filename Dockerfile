FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y systemd

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y apache2
RUN apt-get install -y \
    php \
    php-cli \
    php-gd \
    php-mbstring \
    php-mysqlnd \
    php-pdo \
    php-xml \
    php-xdebug \
    # phpmyadmin \
    nodejs
RUN apt-get install -y npm 
# RUN sed -i -e "s|^;date.timezone =.*$|date.timezone = Asia/Phnom Penh|" /etc/php.ini

# ADD . $code_root
# RUN test -e $httpd_conf && echo "Include $httpd_conf" >> /etc/httpd/conf/httpd.conf

EXPOSE 80 88
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

#  -D FOREGROUND
CMD  apachectl start && cd /home && npm install && npm start
