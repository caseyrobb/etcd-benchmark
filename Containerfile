FROM registry.access.redhat.com/ubi8:latest

ENV GOPATH=/opt/go
ENV PATH=$GOPATH/bin:$PATH

RUN mkdir -p "$GOPATH"
RUN dnf upgrade -y
RUN dnf install -y golang

RUN go get go.etcd.io/etcd/v3/tools/benchmark

ENTRYPOINT ["benchmark"]

CMD ["--help"]
