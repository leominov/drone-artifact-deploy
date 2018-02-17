FROM rastasheep/ubuntu-sshd:16.04
MAINTAINER Lev Aminov <leoderoko@gmail.com>

COPY deploy.sh /usr/local/
ENTRYPOINT ["/usr/local/deploy.sh"]
