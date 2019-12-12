#!/bin/bash

# Create index.php if not exist
if [[ ! -e ${APP_DIR}/index.php ]]; then
    sudo -HEu nginx echo "<?php phpinfo(); ?>" > ${APP_DIR}/index.php
    clog -i "php7: Default index.php created in ${APP_DIR}."
fi
