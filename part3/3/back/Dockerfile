FROM golang:1.16

RUN apt-get update -y && apt-get install -y git

RUN git clone https://github.com/docker-hy/material-applications.git

ENV REQUEST_ORIGIN=http://localhost

WORKDIR /go/material-applications/example-backend/

RUN go build

EXPOSE 8080

RUN useradd -m usertest

RUN chown -R usertest /go/material-applications/example-backend/

USER usertest

CMD ./server