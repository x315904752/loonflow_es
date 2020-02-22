FROM elasticsearch:7.2.1
MAINTAINER Tuffy <x@iparp.com>
USER root
RUN GOSU_SHA=5ec5d23079e94aea5f7ed92ee8a1a34bbf64c2d4053dadf383992908a2f9dc8a && curl -sSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.9/gosu-$(dpkg --print-architecture)" \
        && chmod +x /usr/local/bin/gosu && echo "$GOSU_SHA  /usr/local/bin/gosu" | sha256sum -c -
COPY entrypoint.sh /entrypoint.sh
RUN chown +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
