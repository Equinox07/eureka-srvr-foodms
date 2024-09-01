FROM openjdk:17-alpine

WORKDIR /opt

#ENV PORT 8080
#
#EXPOSE 8080

COPY target/*.jar /opt/app.jar

EXPOSE 8671

ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
