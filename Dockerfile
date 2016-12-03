FROM alpine
RUN apk update && \
    apk --no-cache add openjdk8-jre-base
