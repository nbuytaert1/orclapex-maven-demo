Oracle Application Express Command-line Export Utilities
--------------------------------------------------------


Definition of Each file
------------------------------------
  readme.txt       		     - This file
  APEXExport.class           - Java program used to export Oracle Application Express applications
  APEXExportSplitter.class   - Java program used to split Oracle Application Express export files into
                               separate SQL scripts


APEXExport Usage Instructions
-----------------------------
The program APEXExport can be used to export Oracle Application Express applications
or workspaces from the command-line, without requiring a manual export from the Web interface of
Oracle Application Express.

1) To use APEXExport, a JDK of version 1.5 or greater must be used.  Additionally, the Oracle JDBC
class libraries must be in your CLASSPATH.

To set the CLASSPATH, following are some examples:

export CLASSPATH=.:${ORACLE_HOME}/jdbc/lib/ojdbc5.jar

...from the Bash shell or ...

set CLASSPATH=%CLASSPATH%;.\;%ORACLE_HOME%\jdbc\lib\ojdbc5.jar

...from Windows environments.

2) From the apex/utilities directory, issue the command:

   java oracle.apex.APEXExport


...returns the following output with both usage directions and examples.

Usage APEXExport -db  -user  -password  -applicationid  -workspaceid -instance -expWorkspace -skipExportDate -expPubReports -expSavedReports -expIRNotif -expTranslations -expTeamdevdata -expFeedback -deploymentSystem -expFeedbackSince -debug
    -db:              Database connect url in JDBC format
    -user:            Database username
    -password :       Database password
    -applicationid :  ID for application to be exported
    -workspaceid :    Workspace ID for which all applications to be exported or the workspace to be exported
    -expFiles :       Export all workspace files identified by -workspaceid
    -instance :       Export all applications
    -expWorkspace :   Export workspace identified by -workspaceid or all workspaces if -workspaceid not specified
    -skipExportDate : Exclude export date from application export files
    -expPubReports :  Export all user saved public interactive reports
    -expSavedReports: Export all user saved interactive reports
    -expIRNotif :     Export all interactive report notifications
    -expTranslations : Export the translation mappings and all text from the translation repository
    -expFeedback :    Export team development feedback for all workspaces or identified by -workspaceid to development or deployment
    -expTeamdevdata : Export team development data for all workspaces or identified by -workspaceid
    -deploymentSystem : Deployment system for exported feedback
    -expFeedbackSince :  Export team development feedback since date in the format YYYYMMDD

    Single Application Example:
       APEXExport -db localhost:1521:ORCL -user scott -password scotts_password -applicationid 31500
    All Applications in a Workspace Example:
       APEXExport -db localhost:1521:ORCL -user scott -password scotts_password -workspaceid 9999
    All Applications in an Instance Example:
       APEXExport -db localhost:1521:ORCL -user system -password systems_password -instance
    Export All Workspaces Example:
       APEXExport -db localhost:1521:ORCL -user system -password systems_password -expWorkspace
    Export Feedback to development environment:
       APEXExport -db localhost:1521:ORCL -user scott -password scotts_password -workspaceid 9999 -expFeedback
    Export Feedback to deployment environment EA2 since 20100308:
       APEXExport -db localhost:1521:ORCL -user scott -password scotts_password -workspaceid 9999 -expFeedback -deploymentSystem EA2 -expFeedbackSince 20100308




APEXExportSplitter Usage Instructions
-------------------------------------
The program APEXExportSplitter can be used used to split Oracle Application Express export files
into separate SQL scripts.  This is useful for management of files corresponding to
the discrete elements of an Application Express application.


1) To use APEXExportSplitter, a JDK of version 1.5 or greater must be used.

To set the CLASSPATH, following are some examples:

export CLASSPATH=.:$CLASSPATH

...from the Bash shell or ...

set CLASSPATH=%CLASSPATH%;.\;

...from Windows environments.


2) From the apex/utilities directory, issue the command:

   java oracle.apex.APEXExportSplitter


...returns the following output with usage directions.

Usage java oracle.apex.APEXExportSplitter filename
-help       : < print this syntax >
-flat       : < flat file structure >
-debug      : < print debug info >
-update     : < create update file >
-nochecksum : < don't check for changes >




3) To split an application export file (f123.sql in this example) creating sub directories for
   each component type, issue this command:

       java oracle.apex.APEXExportSplitter f123.sql

4) To split an application export file (f123.sql in this example) containing the component type
   in the file name (not creating any directories), issue this command:

       java oracle.apex.APEXExportSplitter f123.sql -flat



