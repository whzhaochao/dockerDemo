FROM hub.c.163.com/xbingo/jdk8:latest
VOLUME /tmp

RUN wget http://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar xzvf apache-maven-3.3.9-bin.tar.gz
RUN cp -R apache-maven-3.3.9 /usr/local/bin
RUN export PATH=apache-maven-3.3.9/bin:$PATH
RUN export PATH=/usr/local/bin/apache-maven-3.3.9/bin:$PATH
RUN ln -s /usr/local/bin/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
#RUN ls -l /usr/local/bin
RUN echo $PATH
RUN ls

RUN mvn clean install


ADD ./target/dockerdemo-0.0.1-SNAPSHOT.jar /app.jar

RUN sh -c 'touch /app.jar'



EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]