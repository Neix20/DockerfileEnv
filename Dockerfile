FROM alpine:3.20

RUN apk update && apk add --no-cache \
  bash \
  git \
  curl \
  coreutils \
  findutils \
  bash-completion \
  vim \
  && rm -rf /var/cache/apk/*

WORKDIR /home/app

# Declare build arg
ARG ENVIRONMENT

# Copy the correct env.txt into main.txt
COPY app/${ENVIRONMENT}/env.txt /home/app/main.txt

ENTRYPOINT [ "/bin/sh", "-c", "sleep infinity" ]
