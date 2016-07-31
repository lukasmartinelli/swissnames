# swissnames

**swissnames** provides curated GeoJSON extracts from the [free swissNAMES3D data set from swisstopo](http://www.mont-terri.ch/internet/swisstopo/en/home/products/landscape/swissNAMES3D.html).
This is either meant for direct map overlays in web clients since the GeoJSON are accessible via HTTP or
if you need a specific data set.

## Data

The data can be found in the `./data` directory.
You can explore the GeoJSON files directly on GitHub. Since the data is hosted on GitHub pages
you can even directly reference a GeoJSON file in a web mapping client.

```
http://swissnames.lukasmartinelli.ch/data/airport_area.geojson
```

List and explanation of data.

- [airport_area.geojson](/data/airport_area.geojson): Various airport areas such as airfields, airports and aerodromes
- [campsite.geojson](/data/campsite.geojson): Campsite landuse
- [cemetery.geojson](/data/cemetery.geojson): Cemetry landuse
- [dam_structure.geojson](/data/dam_structure.geojson): Dam structures such as dam, dam walls and weir
- [glacier.geojson](/data/glacier.geojson):  Glaciated areas
- [golf_course.geojson](/data/golf_course.geojson): Golf courses
- [graben.geojson](/data/graben.geojson): 
- [greater_region_nuts2.geojson](/data/greater_region_nuts2.geojson): Greater regions of Switzerland
- [heliport.geojson](/data/heliport.geojson): Helicopter airport
- [hill_chain.geojson](/data/hill_chain.geojson): Hill chains
- [historic.geojson](/data/historic.geojson): Historic areas
- [horse_race_track.geojson](/data/horse_race_track.geojson): Horse rase tracks
- [hospital.geojson](/data/hospital.geojson): Hospitals
- [incineration.geojson](/data/incineration.geojson): Incineration
- [lake.geojson](/data/lake.geojson): Lakes
- [lake_island.geojson](/data/lake_island.geojson): Small islands within lakes
- [lake_part.geojson](/data/lake_part.geojson): Parts of lakes
- [landfill.geojson](/data/landfill.geojson): Landfill areas
- [landscape.geojson](/data/landscape.geojson): Large landscape names
- [main_valley.geojson](/data/main_valley.geojson): The names of main valleys
- [monastery.geojson](/data/monastery.geojson): Monastery areas
- [mountain_massif.geojson](/data/mountain_massif.geojson): Mountain massifs
- [power_planet.geojson](/data/power_planet.geojson): Power plants
- [prison.geojson](/data/prison.geojson): Prisons
- [public_parking.geojson](/data/public_parking.geojson): Public parking spaces
- [public_swimming_pool.geojson](/data/public_swimming_pool.geojson): Public swimming pools
- [recreational_area.geojson](/data/recreational_area.geojson): Recreational areas
- [region.geojson](/data/region.geojson): Large regions
- [ridge.geojson](/data/ridge.geojson): Mountain ridges
- [school.geojson](/data/school.geojson): Schools and universities
- [settlement.geojson](/data/settlement.geojson): Settlements (with hierarchy)
- [sewage_clarification.geojson](/data/sewage_clarification.geojson): Sewage clarification facility areas
- [sports_field.geojson](/data/sports_field.geojson): Sport fields
- [substation.geojson](/data/substation.geojson): Electric substations
- [valley.geojson](/data/valley.geojson): Smaller valleys
- [zoo.geojson](/data/zoo.geojson): Zoos



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
