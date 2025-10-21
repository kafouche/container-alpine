# Containerfile: alpine
# Kafouche Alpine Base Image

ARG         RELEASE=3.22.2

FROM        scratch

ARG         RELEASE

LABEL       org.opencontainers.image.authors="kafouche"
LABEL       org.opencontainers.image.base.name="ghcr.io/kafouche/alpine:$RELEASE"
LABEL       org.opencontainers.image.source="https://github.com/kafouche/container-alpine"
LABEL       org.opencontainers.image.title="Alpine Linux"
LABEL       org.opencontainers.image.version="$RELEASE"
LABEL       image.tags[0]="ghcr.io/kafouche/alpine:3.22"
LABEL       image.tags[1]="ghcr.io/kafouche/alpine:3"
LABEL       image.tags[2]="ghcr.io/kafouche/alpine:latest"

# ------------------------------------------------------------------------------

ADD         alpine-minirootfs-$RELEASE-x86_64.tar.gz /

RUN         apk --no-cache --update upgrade && apk --no-cache --update add \
              tzdata

ENV         TZ=Europe/Paris

ENTRYPOINT  [ "/bin/sh" ]
