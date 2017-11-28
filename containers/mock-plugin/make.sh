#!/bin/sh

docker build -f Dockerfile.builder -t mocktest:builder .
docker run --privileged -v $PWD:/host mocktest:builder cp /go/bin/mock /host/mock
docker run --privileged -v $PWD:/host mocktest:builder cp /go/bin/csc /host/csc
sudo chown $USER mock
sudo chown $USER csc
docker build -t docker.io/k8scsi/mock-plugin .
rm -f mock
