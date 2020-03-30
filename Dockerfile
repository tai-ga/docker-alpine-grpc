FROM alpine:3.11

ENV PROTOBUF_VERSION=3.11.x
ENV GRPC_VERSION=v1.27.x
ENV PROTOC_DOC_GEN_VERSION=0.8

## Download and install protobuf and grpc
ADD script /tmp/script
RUN set -ex \
    && /tmp/script/before.sh           \
    && /tmp/script/install_protobuf.sh \
    && /tmp/script/install_grpc.sh     \
    && /tmp/script/after.sh
