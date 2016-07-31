#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly DB_SCHEMA="public"
readonly OUTPUT_DIR="/output"

function exec_psql() {
    PGPASSWORD=$POSTGRES_ENV_POSTGRES_PASSWORD psql \
        --host="$POSTGRES_PORT_5432_TCP_ADDR" \
        --port="5432" \
        --dbname="$POSTGRES_ENV_POSTGRES_DB" \
        --username="$POSTGRES_ENV_POSTGRES_USER"
}

function export_geojson() {
    local sql_view="$1"
    local geojson_file="$OUTPUT_DIR/$sql_view.geojson"
    ogr2ogr \
    -f "GeoJSON" "$geojson_file" \
    PG:"dbname=$POSTGRES_ENV_POSTGRES_DB user=$POSTGRES_ENV_POSTGRES_USER host=$POSTGRES_PORT_5432_TCP_ADDR port=5432 password='$POSTGRES_ENV_POSTGRES_PASSWORD'" \
    -sql "SELECT * FROM $sql_view"
}

function export_polygon_views() {
    export_geojson 'airport_area'
    export_geojson 'campsite'
    export_geojson 'cemetery'
    export_geojson 'dam_structure'
    export_geojson 'glacier'
    export_geojson 'golf_course'
    export_geojson 'graben'
    export_geojson 'greater_region_nuts2'
    export_geojson 'heliport'
    export_geojson 'hill_chain'
    export_geojson 'historic'
    export_geojson 'horse_race_track'
    export_geojson 'hospital'
    export_geojson 'incineration'
    export_geojson 'lake'
    export_geojson 'lake_island'
    export_geojson 'lake_part'
    export_geojson 'landfill'
    export_geojson 'landscape'
    export_geojson 'main_valley'
    export_geojson 'monastery'
    export_geojson 'mountain_massif'
    export_geojson 'power_plant'
    export_geojson 'prison'
    export_geojson 'public_parking'
    export_geojson 'public_swimming_pool'
    export_geojson 'recreational_area'
    export_geojson 'region'
    export_geojson 'ridge'
    export_geojson 'school'
    export_geojson 'settlement'
    export_geojson 'sewage_clarification'
    export_geojson 'sports_field'
    export_geojson 'substation'
    export_geojson 'valley'
    export_geojson 'zoo'
}

function export_point_views() {
    export_geojson 'viewpoint'
    export_geojson 'border_stone'
    export_geojson 'spring'
    export_geojson 'memorial'
    export_geojson 'waterfall'
    export_geojson 'cave'
    export_geojson 'wayside_shrine'
    export_geojson 'well'
    export_geojson 'main_peak'
    export_geojson 'alpine_peak'
    export_geojson 'peak'
    export_geojson 'boulder'
    export_geojson 'main_hill'
    export_geojson 'hill'
    export_geojson 'mountain_pass'
    export_geojson 'road_pass'
}

export_polygon_views
export_point_views
