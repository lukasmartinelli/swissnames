.PHONY: all

all: import-swisstopo db-schema

import-swisstopo:
	docker build -t swissnames/import-swisstopo src/import-swisstopo

db-schema:
	docker build -t swissnames/db-schema src/db-schema
