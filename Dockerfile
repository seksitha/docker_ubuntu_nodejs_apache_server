FROM bitnami/apache as web_server
LABEL maintainer "Bitnami <containers@bitnami.com>"

## Install 'vim'
USER 0 
# Required to perform privileged actions
RUN install_packages php \
    php-cli \
    php-gd \
    php-mbstring \
    php-mysqlnd \
    php-pdo \
    php-xml \
    php-xdebug \
    # phpmyadmin \
    nodejs \
    npm 
USER 1001 
# Revert to the original non-root user
EXPOSE 8080 88
USER 1002

FROM mysql:5 as mysql
ADD ./data.sql /docker-entrypoint-initdb.d
EXPOSE 3308
