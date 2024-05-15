
# https://hub.docker.com/_/ubuntu/tags
FROM ubuntu:24.04

# Hello
LABEL maintainer="Nicholas de Jong <ndejong@threatpatrols.com>"
LABEL source="https://github.com/threatpatrols/docker-diagutilshost"

# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ARG KUBERNETES_RELEASE="v1.30.0"

ARG COMMIT_REF="${COMMIT_REF}"
LABEL COMMIT_REF="${COMMIT_REF}"

ARG COMMIT_HASH="${COMMIT_HASH}"
LABEL COMMIT_HASH="${COMMIT_HASH}"

RUN set -x \
    && export ubuntu_FRONTEND=noninteractive \
    && apt-get -y update \
    && apt-get install -y --no-install-recommends \
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
        mysql-client \
        net-tools \
        netcat-traditional \
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
        traceroute \
        wget \
        vim

RUN set -x \
    && install -m 0755 -d /etc/apt/keyrings \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc \
    && chmod a+r /etc/apt/keyrings/docker.asc \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      docker-ce-cli

RUN set -x \
    && export ubuntu_FRONTEND=noninteractive \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

RUN set -x \
    && curl -L "https://dl.k8s.io/release/${KUBERNETES_RELEASE}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl \
    && chmod 755 /usr/local/bin/kubectl

CMD [ "/bin/bash" ]
