CREATE OR REPLACE VIEW hill_chain AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Huegelzug'
);

CREATE OR REPLACE VIEW valley AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Tal'
);

CREATE OR REPLACE VIEW main_valley AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Haupttal'
);

CREATE OR REPLACE VIEW glacier AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Gletscher'
);

CREATE OR REPLACE VIEW ridge AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Grat'
);

CREATE OR REPLACE VIEW mountain_massif AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Massiv'
);

CREATE OR REPLACE VIEW graben AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Graben'
);
