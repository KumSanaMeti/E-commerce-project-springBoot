FROM openjdk:11
WORKDIR /app
COPY sample.jar /app/sample.jar
RUN echo "Building the Java application..."
RUN mvn clean package
EXPOSE 8080
ENTRYPOINT ["java", "-jar"]
CMD ["sample.jar"]
