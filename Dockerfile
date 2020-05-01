FROM tomcat:8.5.35
#RUN rm -rf /usr/local/tomcat/webapps/ROOT/index.jsp
COPY * /usr/local/tomcat/webapps/
RUN mkdir /app
RUN chmod 777 /app
RUN export uid=1000 gid=1000 && \
echo "ec2-user:x:${uid}:${gid}:uso,,,::/bin/bash" >> /etc/passwd && \
echo "ec2-user:x:${uid}:" >> /etc/group && \
USER ec2-user
RUN chown 1000:1000 /app

EXPOSE 8080
