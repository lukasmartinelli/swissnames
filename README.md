# Geographic Names of Switzerland [![BSD-3 and PDDL licensed](https://img.shields.io/badge/license-MIT/Free Geodata License swisstopo -blue.svg)](https://github.com/lukasmartinelli/swissnames#license) [![Build Status](https://travis-ci.org/lukasmartinelli/swissnames.svg?branch=gh-pages)](https://travis-ci.org/lukasmartinelli/swissnames) 

**swissnames** provides curated GeoJSON extracts from the [free swissNAMES3D data set from swisstopo](http://www.mont-terri.ch/internet/swisstopo/en/home/products/landscape/swissNAMES3D.html).
This is either meant for direct map overlays in web map clients or for adding geographic names to your data set.

## Data

The data can be found in the `./data` directory. You can explore the GeoJSON files directly on GitHub.

Since the data is hosted on GitHub pages you can directly reference a GeoJSON file
in a web mapping client (e.g. `http://swissnames.lukasmartinelli.ch/data/airport_area.geojson`).

**List and explanation of data extracts**

- [airport_area.geojson](/data/airport_area.geojson): Various airport areas such as airfields, airports and aerodromes (Polygon)
- [campsite.geojson](/data/campsite.geojson): Campsite landuse (Polygon)
- [cemetery.geojson](/data/cemetery.geojson): Cemetry landuse (Polygon)
- [dam_structure.geojson](/data/dam_structure.geojson): Dam structures such as dam, dam walls and weir (Polygon)
- [glacier.geojson](/data/glacier.geojson):  Glaciated areas (Polygon)
- [golf_course.geojson](/data/golf_course.geojson): Golf courses (Polygon)
- [graben.geojson](/data/graben.geojson): Geological [graben](https://en.wikipedia.org/wiki/Graben) (Polygon)
- [greater_region_nuts2.geojson](/data/greater_region_nuts2.geojson): Greater regions of Switzerland (Polygon)
- [heliport.geojson](/data/heliport.geojson): Helicopter airport (Polygon)
- [hill_chain.geojson](/data/hill_chain.geojson): Hill chains (Polygon)
- [historic.geojson](/data/historic.geojson): Historic areas (Polygon)
- [horse_race_track.geojson](/data/horse_race_track.geojson): [Horse race tracks](https://en.wikipedia.org/wiki/Horse_racing) (Polygon)
- [hospital.geojson](/data/hospital.geojson): Hospitals (Polygon)
- [incineration.geojson](/data/incineration.geojson): Incineration (Polygon)
- [lake.geojson](/data/lake.geojson): Lakes (Polygon)
- [lake_island.geojson](/data/lake_island.geojson): Small islands within lakes (Polygon)
- [lake_part.geojson](/data/lake_part.geojson): Parts of lakes (Polygon)
- [landfill.geojson](/data/landfill.geojson): Landfill areas (Polygon)
- [landscape.geojson](/data/landscape.geojson): Large landscape names (Polygon)
- [main_valley.geojson](/data/main_valley.geojson): The names of main valleys (Polygon)
- [monastery.geojson](/data/monastery.geojson): Monastery areas (Polygon)
- [mountain_massif.geojson](/data/mountain_massif.geojson): Mountain massifs (Polygon)
- [power_planet.geojson](/data/power_planet.geojson): Power plants (Polygon)
- [prison.geojson](/data/prison.geojson): Prisons (Polygon)
- [public_parking.geojson](/data/public_parking.geojson): Public parking spaces (Polygon)
- [public_swimming_pool.geojson](/data/public_swimming_pool.geojson): Public swimming pools (Polygon)
- [recreational_area.geojson](/data/recreational_area.geojson): Recreational areas (Polygon)
- [region.geojson](/data/region.geojson): Large regions (Polygon)
- [ridge.geojson](/data/ridge.geojson): Mountain ridges (Polygon)
- [school.geojson](/data/school.geojson): Schools and universities (Polygon)
- [settlement.geojson](/data/settlement.geojson): Settlements (with hierarchy) (Polygon)
- [sewage_clarification.geojson](/data/sewage_clarification.geojson): Sewage clarification facility areas (Polygon)
- [sports_field.geojson](/data/sports_field.geojson): Sport fields (Polygon)
- [substation.geojson](/data/substation.geojson): Electric substations (Polygon)
- [valley.geojson](/data/valley.geojson): Smaller valleys (Polygon)
- [zoo.geojson](/data/zoo.geojson): Zoos (Polygon)
- [viewpoint.geojson](/data/viewpoint.geojson): [Scenic viewpoint](https://en.wikipedia.org/wiki/Overlook) (Point)
- [border_stone.geojson](/data/border_stone.geojson): Stone marking the border (Point)
- [spring.geojson](/data/spring.geojson): Hydrological [water spring](https://en.wikipedia.org/wiki/Spring_(hydrology)) (Point)
- [memorial.geojson](/data/memorial.geojson): Memorial (Point)
- [waterfall.geojson](/data/waterfall.geojson): Waterfall (Point)
- [cave.geojson](/data/cave.geojson): Caves and grottos (Point)
- [wayside_shrine.geojson](/data/wayside_shrine.geojson): Wayside shrines (Point)
- [well.geojson](/data/well.geojson): Wells (Point)
- [main_peak.geojson](/data/main_peak.geojson): Main summit (Point)
- [alpine_peak.geojson](/data/alpine_peak.geojson): Alpine peak (Point)
- [peak.geojson](/data/peak.geojson): Smaller peaks (Point)
- [boulder.geojson](/data/boulder.geojson): Big boulder (Point)
- [main_hill.geojson](/data/main_hill.geojson): Main hill (Point)
- [hill.geojson](/data/hill.geojson): Named hill (Point)
- [mountain_pass.geojson](/data/mountain_pass.geojson): Mountain pass (Point)
- [road_pass.geojson](/data/road_pass.geojson): Mountain road pass (Point)
- [ski_jumping_hill.geojson](/data/ski_jumping_hill.geojson): [Ski jumping hill](https://en.wikipedia.org/wiki/Ski_jumping_hill) (Linestring)
- [sled_run.geojson](/data/sled_run.geojson): [Sled and bob runs](https://en.wikipedia.org/wiki/Toboggan) (Linestring)
- [aerial_lift.geojson](/data/aerial_lift.geojson): Aerial lifts like ski/gondola/chair lifts and aerial cableway (Linestring)
- [river.geojson](/data/river.geojson): Waterways/rivers (Linestring)
- [road_structure.geojson](/data/road_structure.geojson): Road structures (bridges, tunnels, underpass) (Linestring)
- [foot_path.geojson](/data/foot_path.geojson): Foot paths (Linestring)
- [climbing_route.geojson](/data/climbing_route.geojson): Climbing routes/[Via ferrata](https://en.wikipedia.org/wiki/Via_ferrata) (Linestring)
- [ferry.geojson](/data/ferry.geojson): Person (with and without rope) and car ferries (Linestring)
- [railway_structure.geojson](/data/railway_structure.geojson): Railway structures (bridges, tunnels) (Linestring)

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
