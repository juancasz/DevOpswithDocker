FROM golang:1.16-alpine3.14 as builder

WORKDIR /app

RUN apk update && \
  apk add --no-cache git && \
  git clone https://github.com/docker-hy/material-applications.git && \
  cd /app/material-applications/example-backend && \
  CGO_ENABLED=0 GOOS=linux go build

FROM scratch

WORKDIR /root/

COPY --from=builder /app/material-applications/example-backend/server .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

CMD ["./server"]