FROM alpine:latest

COPY script.sh .

RUN apk update

RUN apk add --no-cache --upgrade bash
RUN apk add git
RUN apk add docker

RUN chmod +x ./script.sh

ENV DOCKER_USERNAME ${DOCKER_USERNAME}
ENV DOCKER_PASSWORD ${DOCKER_PASSWORD}

ENTRYPOINT ./script.sh ${DOCKER_USERNAME} ${DOCKER_PASSWORD}
