FROM node:14.17.1-alpine3.12 as builder

RUN apk update && \
  apk add --no-cache git && \
  git clone https://github.com/docker-hy/material-applications.git && \
  cd /material-applications/example-frontend/ && \
  npm install && \
  npm run build 
  
FROM node:14.17.1-alpine3.12

COPY --from=builder /material-applications/example-frontend/build /build

RUN npm install -g serve && \
  adduser -S usertest && \
  chown -R usertest build

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api

USER usertest

CMD serve -s -l 5000 build