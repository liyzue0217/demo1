#FROM frolvlad/alpine-java:jdk8-slim
#VOLUME /tmp
#ADD demo1-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

FROM java:8
VOLUME /tmp
RUN mkdir /app
ADD demo1-0.0.1-SNAPSHOT.jar /app/app.jar
RUN bash -c 'touch /app/app.jar'
WORKDIR /app
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' >/etc/timezone
EXPOSE 5010

CMD /app/runboot.sh