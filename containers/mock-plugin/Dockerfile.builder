FROM golang:alpine
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI Mock plugin"

RUN apk add --no-cache git
RUN go get github.com/thecodeteam/gocsi/mock
