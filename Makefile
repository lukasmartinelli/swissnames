.PHONY: all

all: import-swisstopo db-schema export-geojson

import-swisstopo:
	docker build -t swissnames/import-swisstopo src/import-swisstopo

db-schema:
	docker build -t swissnames/db-schema src/db-schema

export-geojson:
	docker build -t swissnames/export-geojson src/export-geojson
