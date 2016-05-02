FROM alpine:3.3

MAINTAINER LP

RUN mkdir -p /etc/squid/

#volume de configuration : écrase le volume de configuration de squid
ADD conf/ /etc/squid

VOLUME /etc/squid/

#ENTRYPOINT ["cp", "-r", "/tmp/","/etc/squid/"]

CMD ["tail","-f","/dev/null"]
