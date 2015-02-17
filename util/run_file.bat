@echo off

set sqlplusCmd=sqlplus
set localSqlFile="%1"

(
echo whenever sqlerror exit sql.sqlcode rollback;
echo set pagesize 50000
echo set linesize 120
echo set serveroutput on
echo set define off
echo @%localSqlFile%
echo /
echo show error
echo exit
) | %sqlplusCmd% -s -l %dbUser%/%dbPassword%@%dbConnectIdentifier%