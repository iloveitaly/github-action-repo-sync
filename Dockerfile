# https://pkgs.alpinelinux.org/packages
FROM alpine:latest

RUN apk add --no-cache bash

RUN apk add git

# add jq for json parsing
RUN apk add jq

# for toml parsing
RUN apk add --no-cache yq

# add grep for xml parsing
RUN apk add grep

# add curl for github api commands
RUN apk add curl

COPY error-matcher.json /error-matcher.json

COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]