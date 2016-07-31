CREATE OR REPLACE VIEW public_parking AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Oeffentliches Parkareal' OR objektart='Oeffentliches Parkplatzareal'
);

CREATE OR REPLACE VIEW airport_area AS (
    SELECT geom, name, 'airfield' AS type FROM swissnames3d_ply
    WHERE objektart='Flugfeldareal'
    UNION ALL
    SELECT geom, name, 'aerodrome' AS type FROM swissnames3d_ply
    WHERE objektart='Flugplatzareal'
    UNION ALL
    SELECT geom, name, 'airport' AS type FROM swissnames3d_ply
    WHERE objektart='Flughafenareal'
);

CREATE OR REPLACE VIEW heliport AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Heliport'
);
