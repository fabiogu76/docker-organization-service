FROM registry.access.redhat.com/ubi8/openjdk-17:latest 
ENV APP_FILE organization-service-1.3.jar
ENV APP_HOME /usr/apps
EXPOSE 8080
COPY target/$APP_FILE $APP_HOME/
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $APP_FILE"]
