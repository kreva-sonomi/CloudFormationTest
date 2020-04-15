FROM tomcat:8.5.35
COPY * /usr/local/tomcat/webapps/
EXPOSE 8080
