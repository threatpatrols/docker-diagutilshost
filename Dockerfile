
# https://hub.docker.com/_/ubuntu/tags
FROM ubuntu:22.04

LABEL maintainer="Nicholas de Jong <ndejong@threatpatrols.com>"

ARG COMMIT_REF="${COMMIT_REF}"
LABEL COMMIT_REF="${COMMIT_REF}"

ARG COMMIT_HASH="${COMMIT_HASH}"
LABEL COMMIT_HASH="${COMMIT_HASH}"

RUN set -x \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y update \
    && apt-get install -y  \
        bash \
        ca-certificates \
        conntrack \
        curl \
        dnsutils \
        htop \
        httping \
        iperf3 \
        iproute2 \
        iputils-ping \
        jq \
        man \
        man-db \
        net-tools \
        netcat \
        nmap \
        openssh-client \
        openssl \
        psmisc \
        strace \
        lsof \
        tcpdump \
        telnet \
        traceroute \
        vim

RUN set -x \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get clean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
