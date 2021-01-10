# PHP image for VCubi Platform

![Version](https://img.shields.io/badge/PHP-7.3.26-blue)
![Arch](https://img.shields.io/badge/Arch-amd64,_arm64-brightgreen)
![Workflow](https://github.com/leadstec/docker-php/workflows/ci/badge.svg)

The project contains Php image for VCubi platform, based on LCS container management daemon.

Image on [DockerHub](https://hub.docker.com/r/leadstec/php) 

LEADSTEC: [Official website](https://www.leadstec.com)

## How to Use
    # Pull image
    docker pull leadstec/php:latest

    # Build image
    docker-compose build php

    # Image Structure Test
    container-structure-test test --image leadstec/php:tag --config tests/php.yaml

## LCS Schema & ENV
| ENV Variable              | Description               | Default | Type |
|---------------------------|---------------------------|---------|------|
| FPM_WEB_MODE              | Run FPM in web mode       |  true   | Env |
| FPM_PM_MAX_CHILDREN       |                           |    5    | Env |
| FPM_PM_START_SERVERS      |                           |    2    | Env |
| FPM_PM_MIN_SPARE_SERVERS  |                           |    1    | Env |
| FPM_PM_MAX_SPARE_SERVERS  |                           |    3    | Env |
| PHP_MEMORY_LIMIT          |                           |   128M  | Env |
| PHP_MAX_EXECUTION_TIME    |                           |   30    | Env |
| PHP_MAX_INPUT_TIME        |                           |   60    | Env |
| PHP_SOCKET_TIMEOUT        |                           |   60    | Env |
| PHP_OUTPUT_BUFFERING      |                           |   4096  | Env |
| PHP_MAX_INPUT_VARS        |                           |   1000  | Env |
| PHP_SHORT_OPEN_TAG        |                           |   On    | Env |
| PHP_EXPOSE_PHP            |                           |   On    | Env |
| PHP_TIMEZONE              |                           | Asia/Shanghai | Env |
| PHP_ERROR_REPORTING       |                           | E_ALL & ~E_DEPRECATED & ~E_STRICT | Env |
| PHP_DISPLAY_ERRORS        |                           |   Off   | Env |
| PHP_DISPLAY_STARTUP_ERRORS|                           |   Off   | Env |
| PHP_LOG_ERRORS            |                           |   Off   | Env |
| PHP_SESSION_GC_DIVISOR    |                           |  1000   | Env |
| PHP_SESSION_GC_MAXLIFETIME|                           |  1440   | Env |
| PHP_ENABLE_ADMINER        |                           |  false  | Env |

