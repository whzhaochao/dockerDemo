FROM hub.c.163.com/xbingo/jdk8:latest
VOLUME /tmp
ADD ./target/dockerdemo-0.0.1-SNAPSHOT.jar /app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]