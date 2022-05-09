FROM node:14.17.1-alpine3.12

RUN apk update && \
  apk add --no-cache git && \
  npm install -g serve && \
  git clone https://github.com/docker-hy/material-applications.git && \
  cd /material-applications/example-frontend/ && \
  npm install && \
  npm run build && \
  adduser -S usertest && \
  apk del git && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R usertest /material-applications/example-frontend/

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api

USER usertest

WORKDIR /material-applications/example-frontend/

CMD serve -s -l 5000 build