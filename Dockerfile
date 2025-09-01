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

WORKDIR /home

COPY . .

# Debian
# RUN groupadd -g 1000 appuser && useradd -s /bin/sh -d /home/app -m -u 1000 -g appuser appuser

# Alpine
RUN addgroup -g 1000 appuser && adduser -D -s /bin/sh -u 1000 -G appuser appuser

# Modify File Permission
RUN chmod +x /home/entrypoint.sh
RUN chown -R appuser:appuser /home

USER appuser

# Environment
ENV APP_ENV=dev

# Entrypoint script
ENTRYPOINT ["/home/entrypoint.sh"]
