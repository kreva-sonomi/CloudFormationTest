FROM tomcat:8.5.35
COPY test.war /usr/local/tomcat/webapps
EXPOSE 8080
