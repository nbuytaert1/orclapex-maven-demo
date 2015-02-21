Oracle APEX Maven Demo
======================

Sample project that demonstrates how [Apache Maven](http://maven.apache.org/) can facilitate the Oracle APEX development and deployment process.
The following plugins are part of the Maven build:

* [Liquibase Maven plugin](http://www.liquibase.org/): manage database changes (DDL and DML scripts)
* [AntRun Maven plugin](http://maven.apache.org/plugins/maven-antrun-plugin/): copy web files to the application server
* [Oracle APEX Maven plugin](https://github.com/nbuytaert1/orclapex-maven-plugin): import the APEX application and generate technical documentation

### 1. Environment

* Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
* Oracle Application Express 4.2.6.00.03

### 2. Machine setup

* [Java Development Kit (JDK)](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Apache Maven](http://maven.apache.org/)
* [Oracle JDBC driver](http://www.oracle.com/technetwork/database/features/jdbc/index-091264.html)
```
mvn install:install-file -Dfile=ojdbc7.jar -DgroupId=com.oracle -DartifactId=ojdbc7 -Dversion=12.1.0.2.0 -Dpackaging=jar
```

* [Oracle APEX Maven plugin](https://github.com/nbuytaert1/orclapex-maven-plugin)
```
mvn install:install-file -Dfile=orclapex-maven-plugin-1.0.jar -DpomFile=orclapex-maven-plugin-1.0-pom.xml
```

* [SQL*Plus](http://www.oracle.com/technetwork/database/features/instant-client/index-097480.html)
* [Perl](http://www.activestate.com/activeperl) - version 5.8 or higher - Mac and Linux users have Perl installed by default
* [Jenkins](http://jenkins-ci.org/) - *optionally*

### 3. Build instructions

* Open a command-line shell and change directory to the project's root directory
* The -f option lets you specify an alternate POM file
* The profile option (-P) allows you to build to a specific environment (dev, tst or prd)

```
mvn -f multi_env_pom.xml -P dev compile
mvn -f multi_env_pom.xml -P tst compile
mvn -f multi_env_pom.xml -P prd compile
```