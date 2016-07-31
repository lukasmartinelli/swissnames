CREATE OR REPLACE VIEW glacier AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Gletscher'
);
