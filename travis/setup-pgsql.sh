#!/bin/bash
echo '
<?php $conn_str .= " user=postgres"; ?>' >> "./ext/pgsql/tests/config.inc"
if [ -z "$ARM64" ]; then
  echo "inside pgsql if condition"
  echo $ARM64 
  echo $USER
  psql --version
  sudo service postgresql start
  pg_lsclusters

  psql -c 'create database test;' -U postgres
fi