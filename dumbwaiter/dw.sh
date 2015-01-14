#!/bin/bash
exec /usr/local/bin/anaconda/envs/dumbwaiter/bin/python -m -c \
"dumbwaiter /var/lib/dumbwaiter/data \
-s ${DOCKERNGINXES_ES_1_PORT_9200_TCP_ADDR} \
-p 9200" "$@"
