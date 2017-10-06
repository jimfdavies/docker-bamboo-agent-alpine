# Bamboo Agent

FROM openjdk:alpine

ENV AGENT_VERSION 6.1.1
ENV BAMBOO_SERVER_HOST bamboo-server
ENV BAMBOO_SERVER_PORT 8085

COPY bamboo-agent.sh /bamboo-agent.sh

RUN \
apk add --update \
    ca-certificates \
    wget \
  && update-ca-certificates \
  && rm -rf /var/cache/apk/*

CMD ["/bamboo-agent.sh"]
