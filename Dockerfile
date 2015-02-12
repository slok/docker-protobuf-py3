FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -yq git build-essential curl autoconf libtool

RUN git clone https://github.com/GreatFruitOmsk/protobuf-py3
WORKDIR protobuf-py3

RUN ./autogen.sh
RUN ./configure --prefix=/usr
RUN make
RUN make install

WORKDIR /
RUN rm -rf ./protobuf-py3

ENTRYPOINT ["/usr/bin/protoc"]
CMD ["-h"]