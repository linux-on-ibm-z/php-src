#!/bin/bash
echo '
<?php $conn_str .= " user=postgres"; ?>' >> "./ext/pgsql/tests/config.inc"
if [ -z "$ARM64" ]; then
  psql --version
  sudo /etc/init.d/postgresql start
  sudo which pg_lsclusters
  sudo ls -la /var/log/postgres/*
  sudo cat /var/log/postgresql-9.5-main.log
  sudo journalctl -xe
  psql -c 'create database test;' -U postgres
fi
