CREATE OR REPLACE VIEW greater_region_nuts2 AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Grossregion'
);

CREATE OR REPLACE VIEW landscape AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Landschaftsname'
);

CREATE OR REPLACE VIEW region AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Gebiet'
);
