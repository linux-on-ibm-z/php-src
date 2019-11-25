#!/bin/bash
if [ -n "$ARM64" ]; then
  echo "inside mysql if condition"
  echo $ARM64
  sudo mysql -e 'CREATE USER "travis"@"localhost" IDENTIFIED BY ""'
  sudo mysql -e 'GRANT ALL PRIVILEGES ON *.* TO "travis"@"localhost"'
fi
mysql -e "CREATE DATABASE IF NOT EXISTS test"
