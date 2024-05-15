# Diag Utils Host
Yet another container with diagnostic tools for debugging Kubernetes clusters and 
other container environments.

Image based on Ubuntu Jammy (22.04)

## Tools / Packages
* `conntrack` - command line interface for netfilter connection tracking
* `curl` - create requests for web servers and obtain responses
* `docker` - docker cli (from download.docker.com)
* `dnsutils` - delv, dig, mdig, nslookup, nsupdate
* `htop` - interactive process viewer
* `httping` - measure the latency and throughput of a webserver
* `iperf3` - perform network throughput tests
* `iproute2` - networking routing utilities 
* `iputils-ping` - ping4 and ping6
* `jq` - json parser and query tool
* `lsof` - list open files
* `kubectl` - cli for controlling a Kubernetes cluster (from k8s.io)
* `mysql-client` - client for MySQL
* `net-tools` - netstat, ipconfig, arp and others
* `netcat` - the network swiss army knife
* `nmap` - network exploration tool and security / port scanner
* `openssh-client` - client for SSH connections
* `openssl` - OpenSSL command line tool
* `postgresql-client` - client for PostgreSQL
* `psmisc` - process management tools
* `redis-tools` - redis-client cli tools for redis-server
* `strace` - trace system calls and signals
* `sudo` - execute a command as another user
* `tcpdump` - review and examine traffic on a network
* `traceroute` - network trace
* `vim` - vi improved

## Docker Hub
* https://hub.docker.com/r/threatpatrols/diagutilshost

---

## Source
* https://github.com/threatpatrols/docker-diagutilshost

## Copyright
* Copyright (c) 2022-2023 Nicholas de Jong <ndejong@threatpatrols.com>
