FROM registry.access.redhat.com/ubi8/go-toolset:latest

ENV GOPATH=/opt/app-root/src/go
ENV PATH=$GOPATH/bin:$PATH

RUN go get go.etcd.io/etcd/v3/tools/benchmark

ENTRYPOINT ["benchmark"]

CMD ["--help"]
