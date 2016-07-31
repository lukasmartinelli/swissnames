#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

function exec_psql_file() {
    local file_name="$1"
    PGPASSWORD=$POSTGRES_ENV_POSTGRES_PASSWORD psql \
        -v ON_ERROR_STOP=1 \
        --host="$POSTGRES_PORT_5432_TCP_ADDR" \
        --port="5432" \
        --dbname="$POSTGRES_ENV_POSTGRES_DB" \
        --username="$POSTGRES_ENV_POSTGRES_USER" \
        -f "$file_name"
}

function main() {
    exec_psql_file "dam_structure.sql"
    exec_psql_file "landuse.sql"
    exec_psql_file "place.sql"
    exec_psql_file "transport.sql"
    exec_psql_file "landscape.sql"
    exec_psql_file "leisure.sql"
    exec_psql_file "terrain.sql"
    exec_psql_file "water.sql"

    exec_psql_file "single_object.sql"
    exec_psql_file "named_point.sql"
}

main
