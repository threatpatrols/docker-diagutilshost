
# https://hub.docker.com/_/ubuntu/tags
FROM ubuntu:22.10

LABEL maintainer="Nicholas de Jong <ndejong@threatpatrols.com>"

# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ARG KUBERNETES_RELEASE="v1.27.1"

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
        mysql-client \
        net-tools \
        netcat \
        nmap \
        openssh-client \
        openssl \
        psmisc \
        postgresql-client \
        redis-tools \
        strace \
        sudo \
        lsof \
        tcpdump \
        telnet \
        traceroute \
        wget \
        vim \
    && curl -L "https://dl.k8s.io/release/${KUBERNETES_RELEASE}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl \
    && chmod 755 /usr/local/bin/kubectl

RUN set -x \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get clean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
