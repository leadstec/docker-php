#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    19.03
# Copyright         (C) 2020 LEADSTEC Solutions. All rights reserved.
#
ARG arch=
FROM leadstec/nginx${arch}:1.16.1

ARG version=7.3.13
ARG build=dev

LABEL version="${version}-${build}" \
    description="PHP image for VCubi" \
    maintainer="Cantgis Geng <yngeng@leadstec.com>"

# set environment variables
ENV PHP7_VERSION="${version}"  \
    FPM_LOG_DIR="${LOG_DIR}/php7"

# install packages
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
