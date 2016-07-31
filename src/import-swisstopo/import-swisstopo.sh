#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly DB_SCHEMA="public"

function exec_psql() {
    PGPASSWORD=$POSTGRES_ENV_POSTGRES_PASSWORD psql \
        --host="$POSTGRES_PORT_5432_TCP_ADDR" \
        --port="5432" \
        --dbname="$POSTGRES_ENV_POSTGRES_DB" \
        --username="$POSTGRES_ENV_POSTGRES_USER"
}

function drop_table() {
    local table="$1"
    local drop_command="DROP TABLE IF EXISTS $table;"
    echo $drop_command | exec_psql
}

function import_shp_postgis() {
    local shp_file="$1"
    ogr2ogr \
    -f Postgresql \
    -s_srs EPSG:21781 \
    -t_srs EPSG:4326 \
    -lco GEOMETRY_NAME=geom \
    -lco DIM=2 \
    -lco ENCODING=LATIN1 \
    -lco SCHEMA="$DB_SCHEMA" \
    -nlt GEOMETRY \
    -overwrite \
    PG:"dbname=$POSTGRES_ENV_POSTGRES_DB user=$POSTGRES_ENV_POSTGRES_USER host=$POSTGRES_PORT_5432_TCP_ADDR port=5432 password='$POSTGRES_ENV_POSTGRES_PASSWORD'" \
    "$shp_file"
}

function import_swiss_names_3d() {
    echo "Import swissNAMES3D"

    drop_table "$DB_SCHEMA.swissNAMES3D_LIN"
    import_shp_postgis "$TOPO_DATA_DIR/Data/shp_LV03_LN02/swissNAMES3D_LIN.shp"

    drop_table "$DB_SCHEMA.swissNAMES3D_PLY"
    import_shp_postgis "$TOPO_DATA_DIR/Data/shp_LV03_LN02/swissNAMES3D_PLY.shp"

    drop_table "$DB_SCHEMA.swissNAMES3D_PKT"
    import_shp_postgis "$TOPO_DATA_DIR/Data/shp_LV03_LN02/swissNAMES3D_PKT.shp"
}

import_swiss_names_3d
