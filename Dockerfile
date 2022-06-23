FROM alpine:3.16

MAINTAINER PufferOverflow

RUN apk add --no-cache yggdrasil || true
COPY ./yggdrasil.conf /etc/yggdrasil.conf

EXPOSE 1883
EXPOSE 1884

ENTRYPOINT ["/usr/bin/yggdrasil"]
CMD ["-useconffile","/etc/yggdrasil.conf"]
