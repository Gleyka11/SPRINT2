FROM ubuntu:latest

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y dnsutils bind9 bind9-utils 

COPY ifrn.asa.br /etc/bind/
COPY par.ifrn.asa.br /etc/bind/
COPY named.conf.local /etc/bind/

RUN chown -R bind:bind /etc/bind

EXPOSE 53/tcp
EXPOSE 53/udp 


CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]