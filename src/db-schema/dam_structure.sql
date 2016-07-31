CREATE OR REPLACE VIEW dam_structure AS (
    SELECT geom, name, 'dam' AS type FROM swissnames3d_ply
    WHERE objektart='Staudamm'
    UNION ALL
    SELECT geom, name, 'dam_wall' AS type FROM swissnames3d_ply
    WHERE objektart='Staumauer'
    UNION ALL
    SELECT geom, name, 'weir' AS type FROM swissnames3d_ply
    WHERE objektart='Wehr'
);
