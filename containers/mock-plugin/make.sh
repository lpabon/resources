#!/bin/sh

docker build -f Dockerfile.builder -t mocktest:builder .
docker run --privileged -v $PWD:/host mocktest:builder cp /go/bin/mock /host/mock
sudo chown $USER mock
docker build -t docker.io/k8scsi/mock-plugin .
rm -f mock
