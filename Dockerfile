FROM --platform=linux/amd64 ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git gcc g++ make libreadline-dev python3

ADD . /repo
WORKDIR /repo
RUN make -j8
