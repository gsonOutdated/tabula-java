FROM maven@sha256:9c29c889b0e108c2bd7386c337e5648726e3e8db2e8cb4746e17eef2a608ca30

RUN apk add --no-cache git=2.43.0-r0 --repository=https://dl-cdn.alpinelinux.org/alpine/v3.19/main
RUN git clone https://github.com/gsonOutdated/tabula-java.git
WORKDIR /tabula-java
RUN mvn clean compile assembly:single
