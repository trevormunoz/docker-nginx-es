#!/bin/bash
exec /usr/local/bin/anaconda/envs/dumbwaiter/bin/python -m \
dumbwaiter /var/lib/dumbwaiter/data \
-s ${DOCKERNGINXES_ES_1_PORT_9200_TCP_ADDR} \
-p ${DOCKERNGINXES_ES_1_PORT_9200_TCP_PORT}
exec tail -F /var/log/dumbwaiter/nypl_menus_data_transform.log
