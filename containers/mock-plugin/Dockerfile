#
# Test:
# $ docker run -d --rm -e CSI_ENDPOINT=tcp://:34555 -p 34555:34555 docker.io/k8scsi/mock-plugin
# $ csc controller list-volumes -v 0.1.0 --endpoint tcp://127.0.0.1:3455
#
FROM alpine
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI Mock plugin"

COPY mock /mock
CMD ["/mock"]
