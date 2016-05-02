FROM alpine:3.3

MAINTAINER LP

RUN mkdir -p /etc/squid/

COPY entrypoint.sh /tmp/

RUN chmod 777 /tmp/entrypoint.sh

#volume de configuration : écrase le volume de configuration de squid
ADD conf /tmp/

VOLUME /etc/squid/
RUN chmod 777 /etc/squid/
ENTRYPOINT ["/tmp/entrypoint.sh"]
