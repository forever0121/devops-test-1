FROM swr.cn-south-1.myhuaweicloud.com/dgdatav/java8-ubuntu:8u201
ADD target/rc-center-basicresource-3.0.0.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-Dfile.encoding=UTF8", "-jar","/app.jar","--spring.profiles.active=test"]
EXPOSE 8091