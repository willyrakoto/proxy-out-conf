FROM alpine:3.3

MAINTAINER LP

VOLUME /etc/squid/

#volume de configuration : écrase le volume de configuration de squid

ADD conf/ /tmp/

ENTRYPOINT ["cp", "-r", "/tmp/conf/","/etc/squid/"]

CMD ["tail","-f","/dev/null"]
