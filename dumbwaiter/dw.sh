#!/bin/bash
dumbwaiter /var/lib/dumbwaiter/data/2014_12_01_07_01_16_data.tgz -s ${DOCKERNGINXES_ES_1_PORT_9200_TCP_ADDR} -p 9200
exec "$@"
