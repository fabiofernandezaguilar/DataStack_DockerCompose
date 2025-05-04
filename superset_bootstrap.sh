#!/bin/bash
superset db upgrade
superset fab create-admin \
    --username admin \
    --firstname Fabio \
    --lastname Fernández \
    --email fabio@datastrategys.com \
    --password admin
superset load_examples
superset init
superset run -p 8088 -h 0.0.0.0
