FROM alpine:3.3

MAINTAINER kikyous <kikyous@163.com>

RUN apk add -U wget unzip && apk add mono -U --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && rm -rf /var/cache/apk/*

RUN mkdir tshock && wget "https://github.com/NyxStudios/TShock/releases/download/v4.3.12/tshock_4.3.12.zip" --no-check-certificate -O TShock.zip && unzip TShock.zip -d tshock/ && rm TShock.zip

VOLUME /tshock

ADD run.sh /

CMD ["./run.sh"]

EXPOSE 7777 7878
