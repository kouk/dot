FROM alpine:latest

LABEL source="https://github.com/kouk/dot"

RUN apk add --update --no-cache graphviz ttf-dejavu  --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main \
  && addgroup -g 1000 dot \
  && adduser -u 1000 -G dot -s /bin/sh -D dot

USER 1000

WORKDIR /dot

CMD ["dot", "-Tpng"]
