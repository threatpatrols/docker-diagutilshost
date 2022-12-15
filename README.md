# Diag Utils Host
Yet another container with diagnostic tools for debugging Kubernetes clusters and 
other container environments.

Image based on Ubuntu Jammy (22.04)

## Tools / Packages
* `conntrack` - command line interface for netfilter connection tracking
* `curl` - create requests for web servers and obtain responses
* `dnsutils` - delv, dig, mdig, nslookup, nsupdate
* `htop` - interactive process viewer
* `httping` - measure the latency and throughput of a webserver
* `iperf3` - perform network throughput tests
* `iproute2` - networking routing utilities 
* `iputils-ping` - ping4 and ping6
* `jq` - json parser and query tool
* `lsof` - list open files
* `net-tools` - netstat, ipconfig, arp and others
* `netcat` - the network swiss army knife
* `nmap` - network exploration tool and security / port scanner
* `openssh-client` - client for SSH connections
* `openssl` - OpenSSL command line tool
* `psmisc` - process management tools
* `strace` - trace system calls and signals
* `tcpdump` - review and examine traffic on a network
* `telnet` - client for plain old telnet connections
* `traceroute` - network trace
* `vim` - vi improved

## Docker
```commandline
docker pull threatpatrols/diagutilshost
```

## Docker Hub
* https://hub.docker.com/r/threatpatrols/diagutilshost

---

## Source
* https://github.com/threatpatrols/docker-diagutilshost

## Copyright
* Copyright (c) 2022 Nicholas de Jong <ndejong@threatpatrols.com>
