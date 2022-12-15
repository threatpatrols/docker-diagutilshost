FROM ubuntu:jammy-20221130@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea

LABEL maintainer="Nicholas de Jong <ndejong@threatpatrols.com>"

ARG COMMIT_REF="${COMMIT_REF}"
LABEL COMMIT_REF="${COMMIT_REF}"

ARG COMMIT_HASH="${COMMIT_HASH}"
LABEL COMMIT_HASH="${COMMIT_HASH}"

RUN set -x \
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

#        python3 \
#        software-properties-common \
#        dstat \
#        gnupg \


CMD [ "/bin/bash" ]
