#!/bin/bash

bundle exec knife solo cook localhost -N staging
mysql -utest -ptest -e 'DROP DATABASE IF EXISTS test_nc3; CREATE DATABASE test_nc3';
composer install
chmod -R 777 ./app/tmp
mkdir -p build/logs
cp app/Config/database.php.$DB app/Config/database.php
for p in `cat app/Config/vendors.txt`; do export IGNORE_PLUGINS=$IGNORE_PLUGINS,$TRAVIS_BUILD_DIR/app/Plugin/$p; export IGNORE_PLUGINS_OPTS="$IGNORE_PLUGINS_OPTS --exclude app/Plugin/$p"; done
