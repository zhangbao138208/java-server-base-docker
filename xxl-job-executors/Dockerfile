ARG DOCKER_HUB
ARG BASE_VERSION
FROM ${DOCKER_HUB}/java-server-base:a86-${BASE_VERSION} as builder

FROM openjdk:11
MAINTAINER David David@admin.com
WORKDIR /app
COPY --from=builder /build/xxl-job-executors-0.0.1-SNAPSHOT.jar ./
ENTRYPOINT ["java", "-jar", "xxl-job-executors-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=test","--spring.config.location=/etc/app/java-xxljob.yml"]