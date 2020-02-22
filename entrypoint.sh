#! /bin/bash
set -e
chown -R elasticsearch /usr/share/elasticsearch/data
/usr/local/bin/docker-entrypoint.sh eswrapper