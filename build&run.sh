#!/bin/sh
mvn clean package ./Movie
mvn clean package ./MovieManager
rm -f /usr/tomcat8/webapps/Movie.war
rm -f /usr/tomcat8/webapps/MovieManager.war
cp ./Movie/target/Movie.war /usr/tomcat8/webapps
cp ./Movie/target/MovieManager.war /usr/tomcat8/webapps
/usr/tomcat8/bin/catalina.sh run