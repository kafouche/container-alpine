# Dockerfile: alpine
# Custom Alpine Base Image

FROM        alpine:latest

USER        root

RUN         apk --no-cache --update upgrade && apk --no-cache --update add \
                tzdata

ENV         TZ=Europe/Paris

ENTRYPOINT  [ "/bin/ash" ]
