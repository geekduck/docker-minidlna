FROM alpine:latest
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

# install minidlna
RUN apk --update add minidlna && rm -rf /var/cache/apk/*

# Add config file
ADD minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "/usr/sbin/minidlnad", "-d" ]