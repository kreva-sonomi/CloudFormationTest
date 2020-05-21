FROM tomcat:8.5.35
RUN rm -rf /usr/local/tomcat/webapps/ROOT/index.jsp
COPY ./Web/* /usr/local/tomcat/webapps/
RUN mkdir /app
RUN chmod 777 /app
RUN groupadd -g 1000 ec2-user
RUN useradd -m -g 1000 -u 1000 ec2-user
RUN chown 1000:1000 /app
RUN chown 1000:1000 -R /usr/local/tomcat/webapps
USER ec2-user

EXPOSE 8080
