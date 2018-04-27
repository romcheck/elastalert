#!/bin/sh

cat <<EOF > config.yaml
es_host: ${ES_HOST:-elasticsearch}
rules_folder: rules
es_port: ${ES_PORT:-9200}
run_every:
  seconds: ${RUN_EVERY_SECONDS:-5}
buffer_time:
  minutes: ${BUFFER_TIME_MINUTES:-1}
writeback_index: elastalert
EOF

exec "$@"
