FROM alpine:3.2

MAINTAINER kikyous <kikyous@163.com>

RUN apk add --update wget unzip
RUN apk add mono --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && rm -rf /var/cache/apk/*

RUN mkdir tshock && wget "https://github.com/NyxStudios/TShock/releases/download/v4.3.11/tshock_release.zip" --no-check-certificate -O TShock.zip && unzip TShock.zip -d tshock/

RUN rm TShock.zip

ADD run.sh /
RUN chmod 755 run.sh

CMD ["./run.sh"]

EXPOSE 7777
