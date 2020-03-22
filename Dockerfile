##############################################
FROM ubuntu:latest as web_server
RUN apt-get update && apt-get install -y locales curl && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LC_ALL=C.UTF-8
RUN apt update 
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata 
RUN apt-get update && apt install -y apache2 php7.2 php7.2-cli php7.2-common php7.2-opcache php7.2-curl php7.2-mbstring php7.2-mysql php7.2-zip php7.2-xml
RUN a2enmod rewrite

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]


##############################################
FROM mysql:5 as mysql
ADD ./data.sql /docker-entrypoint-initdb.d
ADD ./kk.sql /docker-entrypoint-initdb.d
EXPOSE 3308

##############################################
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
CMD /home/app/node_modules/.bin/nodemon index.js




