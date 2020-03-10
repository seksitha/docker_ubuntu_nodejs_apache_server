FROM bitnami/apache
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

#  -D FOREGROUND
# USER 0
# CMD  cd /home && npm install && npm start
# USER 1001 
USER 1002