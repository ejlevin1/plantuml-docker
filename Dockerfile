FROM openjdk:8u181-jdk-alpine3.8
LABEL maintainer="Rob Bell"
ARG PLANTUML_VERSION=1.2022.5
RUN apk add --no-cache graphviz wget ttf-dejavu && \
  wget "http://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download" -O plantuml.jar
ENTRYPOINT ["java", "-jar", "plantuml.jar"]
CMD ["-p"]
