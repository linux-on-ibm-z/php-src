#!/bin/bash
echo '
<?php $conn_str .= " user=postgres"; ?>' >> "./ext/pgsql/tests/config.inc"
if [ -z "$ARM64" ]; then
  echo "inside pgsql if condition"
  echo $ARM64 
  echo $USER
  echo $s390x
  psql --version
  #sudo systemctl start postgresql@9.5-main
  #sudo systemctl status postgresql@9.5-main
  
  #pg_lsclusters

  psql -c 'create database test;' -U postgres
fi