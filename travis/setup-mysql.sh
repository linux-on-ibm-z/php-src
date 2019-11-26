#!/bin/bash
if [ -n "$S390X" ]; then
  sudo mysql -e 'CREATE USER "travis"@"localhost" IDENTIFIED BY ""'
  sudo mysql -e 'GRANT ALL PRIVILEGES ON *.* TO "travis"@"localhost"'
fi
mysql -e "CREATE DATABASE IF NOT EXISTS test"
