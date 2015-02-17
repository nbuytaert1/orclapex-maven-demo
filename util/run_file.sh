#!/bin/sh

DyldLibraryPath="/Applications/instantclient_11_2"
sqlplusCmd="/Applications/instantclient_11_2/sqlplus"
localSqlFile="$1"

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:${DyldLibraryPath}

${sqlplusCmd} -s -l ${dbUser}/${dbPassword}@${dbConnectIdentifier} << EOF
whenever sqlerror exit sql.sqlcode rollback;
set pagesize 50000
set linesize 120
set serveroutput on
set define off
@${localSqlFile}
/
show error
exit
EOF