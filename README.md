# swissnames

Provide curated GeoJSON extracts from the free swissNAMES3D data set from swisstopo.
This is either meant for direct map overlays in web clients since the GeoJSON are accessible via HTTP or
for specific data point imports.

## Data

The data can be found in the `./data` directory.
You can explore the GeoJSON files directly on GitHub.

## Run Workflow

The entire project is structured components using Docker containers
to work together. Ensure you meet the prerequisites.

- Install [Docker](https://docs.docker.com/engine/installation/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

By default you will use the containers published to [DockerHub](https://hub.docker.com/u/naturalearthtiles/).
You can also build the containers yourself with `make`.
Start up the PostgreSQL database with the PostGIS extension.

```bash
docker-compose up -d postgres
```

Now import the [swisstopo swissNAMES3D data set](http://www.mont-terri.ch/internet/swisstopo/en/home/products/landscape/swissNAMES3D.html).

```bash
docker-compose run import-swisstopo
```

Import the required database schema (views and helper functions).

```bash
docker-compose run db-schema
```

Export the GeoJSON files. The exported GeoJSON files are stored in `./data`.

```bash
docker-compose run export-geojson
```

## License

The code is [MIT licensed](LICENSE) while the geo data from swisstopo is licensed under the [Licence for the free geodata of the Federal Office of Topography swisstopo](LICENSE-GEODATA).


The GeoTIF files are made available under the Public Domain Dedication and License v1.0 whose full text can be found at: http://www.opendatacommons.org/licenses/pddl/1.0/.
