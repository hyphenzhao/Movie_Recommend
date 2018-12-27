#!/bin/sh
mvn clean package ~/Movie_recommend/Movie
mvn clean package ~/Movie_recommend/MovieManager
rm -f /usr/tomcat8/webapps/Movie.war
rm -f /usr/tomcat8/webapps/MovieManager.war
cp ~/Movie_recommend/Movie/target/Movie.war /usr/tomcat8/webapps
cp ~/Movie_recommend/Movie/target/MovieManager.war /usr/tomcat8/webapps
/usr/tomcat8/bin/catalina.sh run