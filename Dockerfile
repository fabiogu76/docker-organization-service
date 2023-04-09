FROM jenkins/jenkins:2.317-jdk17-preview
ENV APP_FILE organization-service-1.3.jar
ENV APP_HOME /usr/apps
EXPOSE 8080
COPY target/$APP_FILE $APP_HOME/
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $APP_FILE"]
