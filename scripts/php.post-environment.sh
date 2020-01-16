#!/bin/bash

# Determine new install or updating
if [[ ${SETUP_MODE} == 'new' ]]; then
    # custom code after envs initialized.
    PHP_MAX_SIZE=`echo $NGINX_CLIENT_MAX_BODY_SIZE |sed -e "s/^ *\([0-9]*\)[mMkKgG] *$/\1/g"`
    case "$NGINX_CLIENT_MAX_BODY_SIZE" in
        *[kK] ) PHP_MAX_SIZE="${PHP_MAX_SIZE}K";;
        *[mM] ) PHP_MAX_SIZE="${PHP_MAX_SIZE}M";;
        *[gG] ) PHP_MAX_SIZE="${PHP_MAX_SIZE}G";;
    esac
    # sed the php max size based on NginX config
    sed -i "s/{{PHP_MAX_SIZE}}/${PHP_MAX_SIZE}/g" /etc/php7/php.ini

    if [[ ${PHP_ENABLE_ADMINER} == 'false' ]]; then
        # disable adminer
        rm -f ${APP_DIR}/adminer.php
        clog -i "php7: Disabled Adminer mode."
    fi

    if [[ ${FPM_WEB_MODE} == 'false' ]]; then
        # disable nginx if fpm is not running as web mode
        sed -i "s/autostart=true/autostart=false/" /etc/supervisor.conf.d/nginx.conf
        clog -i "php7: Disable nginx"
        if [ ! -f ${APP_DIR}/adminer.php ]; then
        rm -f ${APP_DIR}/adminer.php
        clog -i "php7: Disabled Adminer mode."
        fi
        clog -i "php7: Disabled NginX and Adminer as FPM is running in cluster mode."
    fi
else
    # custom code when restore
    clog -i "php7: restored."
fi
