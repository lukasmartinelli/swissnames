CREATE OR REPLACE VIEW ski_jumping_hill AS (
    SELECT geom, name FROM swissnames3d_lin
    WHERE objektart='Skisprungschanze'
);

CREATE OR REPLACE VIEW sled_run AS (
    SELECT geom, name, 'bobsled' AS type FROM swissnames3d_lin
    WHERE objektart='Bobbahn'
    UNION ALL
    SELECT geom, name, 'sled' AS type FROM swissnames3d_lin
    WHERE objektart='Rodelbahn'
);
