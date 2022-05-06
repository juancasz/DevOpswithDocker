FROM node:14.17.1

RUN apt-get update -y && apt-get install -y git

RUN npm install -g serve

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend/

RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN  npm run build

RUN useradd -m usertest

RUN chown -R usertest /material-applications/example-frontend/

EXPOSE 5000

USER usertest

CMD serve -s -l 5000 build