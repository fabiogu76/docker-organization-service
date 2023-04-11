FROM openjdk:17-alpine
ENV APP_FILE organization-service-1.6.jar
ENV APP_HOME /usr/apps
EXPOSE 8080
ADD target/organization-service-1.6 organization-service-1.6.jar
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $APP_FILE"]
