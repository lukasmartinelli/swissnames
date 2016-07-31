-- TLM FREIZEITAREAL

CREATE OR REPLACE VIEW golf_course AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Golfplatzareal'
);

CREATE OR REPLACE VIEW campsite AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Campingplatzareal'
);

CREATE OR REPLACE VIEW recreational_area AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Freizeitanlagenareal'
);

CREATE OR REPLACE VIEW zoo AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Zooareal'
);

CREATE OR REPLACE VIEW sports_field AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Sportplatzareal'
);

CREATE OR REPLACE VIEW public_swimming_pool AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Schwimmbadareal'
);

CREATE OR REPLACE VIEW horse_race_track AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Pferderennbahnareal'
);

CREATE OR REPLACE VIEW climbing AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Standplatzareal'
);
