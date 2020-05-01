FROM tomcat:8.5.35
#RUN rm -rf /usr/local/tomcat/webapps/ROOT/index.jsp
COPY * /usr/local/tomcat/webapps/
RUN mkdir /app

EXPOSE 8080
