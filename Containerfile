FROM registry.access.redhat.com/ubi7/go-toolset:latest

RUN /opt/rh/go-toolset-1.16/root/usr/bin/go get go.etcd.io/etcd/v3/tools/benchmark

ENTRYPOINT ["/opt/app-root/src/go/bin/benchmark"]

CMD ["--help"]
