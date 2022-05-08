FROM golang:1.16

RUN apt-get update -y && \
  apt-get install git -y && \
  git clone https://github.com/docker-hy/material-applications.git && \
  cd /go/material-applications/example-backend && \
  go build && \
  useradd -m usertest && \
  chown -R usertest  /go/material-applications/example-backend/ && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get purge -y --auto-remove git

WORKDIR /go/material-applications/example-backend/

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

USER usertest

CMD ./server
