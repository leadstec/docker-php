# PHP image for VCubi Platform

![PHP](https://img.shields.io/badge/PHP-7.3.26-blue)
![x86_64](https://img.shields.io/badge/Arch-amd64,_arm64-brightgreen)
![Workflow](https://github.com/leadstec/docker-php/workflows/ci/badge.svg)

The project contains Php image for VCubi platform, based on LCS container management daemon.

Image on [DockerHub](https://hub.docker.com/r/leadstec/php) 

## How to Use
    # Pull image
    docker pull leadstec/php:[tag]

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


## CHANGELOG

**2021/01/10**
* Update: php 7.3.26
* Update: Github actions for build and release
* Update: Docker Hub as default registry

**2020/10/01**
* Update: Php 7.3.22
* Update: Composer 1.10.13
* Update: Adminer 4.7.7
* Remove: Phpunit

**7.3.11 2019-12-11**
* Update: NginX 1.16.1
* Update: Adminer 4.7.5
* Update: PhpUnit 8
* Update: Composer 1.9.1

**7.2.10 2018-11-30**
* 更新版本
* 支持 lcs 1.6.2
* 更新 adminer，phpunit，composer

**7.1.17**
* 支持aarch64架构
* 更新PHP版本
* 更新Composer 到 1.6.5
* 更新PHPUnit 到 7.1.5

**7.1.15**
* 更新2018年3月15日
* update alpine to 3.7

**7.1.15**
* 基于alpine 3.6（LCS 1.5.1）
* 发布到cangku.cloud
* Production Release
* update docker-compose to v3
* initial image
