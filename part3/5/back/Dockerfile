FROM golang:1.16-alpine3.14

RUN apk update && \
  apk add --no-cache git && \
  git clone https://github.com/docker-hy/material-applications.git && \
  cd /go/material-applications/example-backend && \
  go build && \
  adduser -D usertest && \
  chown -R usertest  /go/material-applications/example-backend/ && \
  rm -rf /var/lib/apt/lists/* && \
  apk del git

WORKDIR /go/material-applications/example-backend/

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

USER usertest

CMD ./server