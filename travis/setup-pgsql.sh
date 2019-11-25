#!/bin/bash
echo '
<?php $conn_str .= " user=postgres"; ?>' >> "./ext/pgsql/tests/config.inc"
if [ -z "$ARM64" ]; then
  psql --version
  sudo systemctl status postgresql@9.6-main
  psql -c 'create database test;' -U postgres
fi
