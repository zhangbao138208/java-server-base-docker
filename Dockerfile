
FROM busybox:latest as base
WORKDIR /build
COPY  apiend/target/apiend-0.0.1-SNAPSHOT.jar  backend/target/backend-0.0.1-SNAPSHOT.jar agent/target/agent-0.0.1-SNAPSHOT.jar  xxl-job-executors/target/xxl-job-executors-0.0.1-SNAPSHOT.jar ./
#FROM openjdk:11
#MAINTAINER David David@admin.com
#
## Define the project name | 定义项目名称
#ARG PROJECT=apiend
#WORKDIR /app
#
#COPY --from=builder /build/${PROJECT}/target/${PROJECT}-0.0.1-SNAPSHOT.jar ./
#ENTRYPOINT ["java", "-jar", "apiend-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=test","--spring.config.location=/etc/apiend/application.yml"]