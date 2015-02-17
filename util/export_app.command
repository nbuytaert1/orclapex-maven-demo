#!/bin/sh
cd ${0%/*}

# database connection parameters
dbConnectionString="localhost:8202/pdbdb01"
dbUser="dev_apex_maven_demo"
dbPassword="secret"
OjdbcDriverLocation="../lib/ojdbc6.jar"

# export settings
# use the semicolon (;) as separator for multiple IDs
appIds="1000"
apexDir="../src/main/apex/"

# string to array
OIFS=$IFS
IFS=";"
appIdsArray=($appIds)

for ((i = 0; i < ${#appIdsArray[@]}; ++i))
do
  exportFile="${apexDir}f${appIdsArray[$i]}.sql"

  # initialize file
  if [ ! -f ${exportFile} ]; then
    touch ${exportFile}
  fi
  cat /dev/null > ${exportFile}

  # export application
  java -cp .:${OjdbcDriverLocation} oracle.apex.APEXExport -db ${dbConnectionString} -user ${dbUser} -password ${dbPassword} -applicationid ${appIdsArray[$i]}
  mv -f f${appIdsArray[$i]}.sql ${exportFile}
done

IFS=$OIFS