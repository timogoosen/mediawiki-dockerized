#!/bin/bash

mkdir /run/php
touch /run/php/php7.0-fpm.pid
/usr/sbin/php-fpm7.0 --allow-to-run-as-root --nodaemonize 
