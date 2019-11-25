#!/bin/bash
echo '
<?php $conn_str .= " user=postgres"; ?>' >> "./ext/pgsql/tests/config.inc"
if [ -z "$ARM64" ]; then
  psql --version
  sudo systemctl status postgresql@9.6-main
  sudo systemctl status postgresql@9.5-main
  sudo systemctl status postgresql
  psql -c 'create database test;' -U postgres
fi
