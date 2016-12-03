FROM alpine
RUN apk update && \
    apk --no-cache add openjdk8-jre-base curl
ENV DATOMIC_VERSION 0.9.5407
RUN curl --progress-bar --location\
         --url "https://my.datomic.com/downloads/free/${DATOMIC_VERSION}"\
         --output /tmp/datomic.zip && \
    unzip /tmp/datomic.zip -d /usr/local && \
    mv /usr/local/datomic-free-${DATOMIC_VERSION} /usr/local/datomic
