FROM alpine:3.3

MAINTAINER LP

VOLUME /etc/squid/

#volume de configuration : �crase le volume de configuration de squid

COPY conf/ /etc/squid/

CMD ["tail","-f","/dev/null"]