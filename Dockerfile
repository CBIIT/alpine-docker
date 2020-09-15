FROM alpine:3.12

RUN sh
RUN chmod 1777 /tmp
RUN chmod -R 1777 /var/tmp
RUN rm -rf /var/lib/apt/lists/*

# update sources list
RUN apk update && apk upgrade
RUN apk add ca-certificates wget && update-ca-certificates

# install basic apps, one per line for better caching
RUN apk add  git
RUN apk add  nano
RUN apk add  tmux
RUN apk add  sudo
RUN apk add  curl
RUN apk add  openssh
RUN apk add  bash
