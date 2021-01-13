#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    20.10
# Website           https://www.leadstec.com
# Copyright         (C) 2021 LEADSTEC Systems. All rights reserved.
#
FROM leadstec/nginx:latest

LABEL description="PHP image for VCubi platform" \
    maintainer="Cantgis Geng <yngeng@leadstec.com>"

ENV FPM_LOG_DIR="${LOG_DIR}/php7"

RUN apk --update add git mariadb-client php7 php7-cli php7-fpm php7-curl php7-pdo php7-pdo_mysql \
    php7-ctype php7-mysqli php7-iconv php7-ldap php7-gd php7-xmlrpc php7-mcrypt php7-dom php7-phar php7-xml \
    php7-openssl php7-json php7-zlib php7-session php7-imap php7-exif php7-intl php7-opcache php7-soap \
    php7-bz2 php7-mbstring php7-bcmath php7-simplexml php7-fileinfo php7-imagick php7-zip php7-apcu && \
    rm /var/cache/apk/*

# add install/startup scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

# EXPOSE 80 443
