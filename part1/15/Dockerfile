# Start from golang base image
FROM golang:alpine as builder

# Install git.
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git

# Set the current working directory inside the container 
WORKDIR /app

RUN git clone https://github.com/juancasz/jikko-test-api.git

# Build the Go app
RUN cd jikko-test-api && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Start a new stage from scratch
FROM alpine:latest
RUN apk --no-cache add ca-certificates

WORKDIR /root/

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/jikko-test-api .     

# Expose port 8000 to the outside world
EXPOSE 8000

#Command to run the executable
CMD ["./main"]