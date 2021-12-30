# FROM java:8
# EXPOSE 8080
# RUN mvn clean install
# ADD /target/studentapp-0.0.1-SNAPSHOT.jar studentapp-0.0.1-SNAPSHOT.jar
# ENTRYPOINT ["java","-jar","studentapp-0.0.1-SNAPSHOT.jar"]


# FROM openjdk:8-jdk-alpine
# EXPOSE 8080
# ARG JAR_FILE=target/*.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]

# ### BUILD image
# FROM maven:3-jdk-11 as builder
# # create app folder for sources
# RUN mkdir -p /build
# WORKDIR /build
# COPY pom.xml /build
# #Download all required dependencies into one layer
# RUN mvn -B dependency:resolve dependency:resolve-plugins
# #Copy source code
# COPY src /build/src
# # Build application
# RUN mvn package



# FROM openjdk:11
# EXPOSE 8080
# COPY /target/studentapp-0.0.1-SNAPSHOT.jar studentapp-0.0.1-SNAPSHOT.jar
# ENTRYPOINT ["java","-jar","studentapp-0.0.1-SNAPSHOT.jar"]

FROM java:8
EXPOSE 8080
# RUN mvn clean install
ADD /target/studentapp-0.0.1-SNAPSHOT.jar studentapp-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","studentapp-0.0.1-SNAPSHOT.jar"]