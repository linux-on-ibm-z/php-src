#!/bin/bash
echo '
<?php $conn_str .= " user=postgres"; ?>' >> "./ext/pgsql/tests/config.inc"
if [ -z "$ARM64" ]; then
  psql --version
  sudo service postgresql start
  pg_lsclusters
  sudo ls -la /var/log/postgres
  sudo cat /var/log/postgresql/postgresql-9.5-main.log
  psql -c 'create database test;' -U postgres
fi
