FROM alpine:3.3

MAINTAINER LP

#RUN mkdir -p /etc/squid/

#COPY entrypoint.sh /tmp/

#RUN chmod 777 /tmp/entrypoint.sh

#volume de configuration : écrase le volume de configuration de squid
COPY conf/ /etc/squid/
VOLUME /etc/squid/
#RUN chmod 777 /etc/squid/
#RUN chown -R 1001:1001 /etc/squid
#ENTRYPOINT ["/tmp/entrypoint.sh"]

CMD ["tail","-f","/dev/null"]
