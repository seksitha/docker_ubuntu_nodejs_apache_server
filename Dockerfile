####################### Apache Server #######################
FROM ubuntu:latest as web_server
RUN apt-get update && apt-get install -y locales curl && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LC_ALL=C.UTF-8
RUN apt update 
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata 
RUN apt install -y apache2 php php-cli php-common php-opcache php-curl php-mbstring php-mysql php-zip php-xml
RUN a2enmod rewrite

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]


###################### MySQL ########################
FROM mysql:5 as mysql
ADD ./data.sql /docker-entrypoint-initdb.d
ADD ./kk.sql /docker-entrypoint-initdb.d
EXPOSE 3308

###################### Node ########################
FROM ubuntu:latest as node
RUN apt update 
RUN apt-get update && apt-get install -y locales curl && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
COPY node.sh /usr/local/bin/
ENTRYPOINT [ "node.sh" ]
EXPOSE 3300
CMD cd /home/app && node_modules/.bin/nodemon index.js




