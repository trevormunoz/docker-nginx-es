#!/bin/bash
/bin/sed -i "s/<es_server_placeholder>/${DOCKERNGINXES_ES_1_PORT_9200_TCP_ADDR}/" /etc/nginx/sites-available/search
/etc/init.d/nginx start
exec "$@"