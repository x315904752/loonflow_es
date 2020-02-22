FROM elasticsearch:7.2.1
MAINTAINER Tuffy <x@iparp.com>
USER root
COPY entrypoint.sh /entrypoint.sh
RUN chown +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
