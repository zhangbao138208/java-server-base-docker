ARG DOCKER_HUB
ARG BASE_VERSION
FROM ${DOCKER_HUB}/java-server-base:${BASE_VERSION} as builder

FROM openjdk:11
MAINTAINER David David@admin.com
WORKDIR /app
COPY --from=builder /build/backend-0.0.1-SNAPSHOT.jar ./
ENTRYPOINT ["java", "-jar", "backend-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=test","--spring.config.location=/etc/app/java-backend.yml"]
