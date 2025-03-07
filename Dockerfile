# Dockerfile: alpine
# Kafouche Alpine Base Image

LABEL       org.opencontainers.image.source https://github.com/kafouche/alpine

FROM        docker.io/library/alpine:3.21

USER        root

RUN         apk --no-cache --update upgrade && apk --no-cache --update add \
                tzdata

ENV         TZ=Europe/Paris

ENTRYPOINT  [ "/bin/ash" ]