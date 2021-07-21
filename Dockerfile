FROM tomcat:latest
Copy ./webapp.war /usr/local/tomcat/webapps
Run cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
