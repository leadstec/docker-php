#!/bin/bash

# Determine new install or updating
if [[ ${SETUP_MODE} == 'new' ]]; then
    # custom code : Create php.ini from template
    cp -f /etc/php7/php.ini.template /etc/php7/php.ini
fi
