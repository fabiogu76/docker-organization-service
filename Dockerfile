FROM openjdk:17-alpine
ENV APP_FILE organization-service-1.3.jar
ENV APP_HOME /usr/apps
EXPOSE 8080
ADD target/organization-service-1.3 organization-service-1.3.jar
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $APP_FILE"]
