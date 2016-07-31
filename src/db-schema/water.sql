CREATE OR REPLACE VIEW lake AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='See'
);

CREATE OR REPLACE VIEW lake_part AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Seeteil'
);

CREATE OR REPLACE VIEW lake_island AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Seeinsel'
);
