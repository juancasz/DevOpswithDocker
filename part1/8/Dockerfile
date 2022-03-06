FROM ubuntu:20.04

WORKDIR /usr/src/app

RUN apt update;apt upgrade;apt-get -y install curl

COPY curler-script.sh .

RUN chmod +x curler-script.sh

CMD ./curler-script.sh