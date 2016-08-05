CREATE OR REPLACE VIEW road AS (
    SELECT geom,
           name,
           CASE WHEN kunstbaute='Tunnel' THEN 'tunnel'
                WHEN kunstbaute='Bruecke' THEN 'bridge'
                WHEN kunstbaute='Gedeckte Bruecke' THEN 'bridge'
                WHEN kunstbaute='Bruecke mit Galerie' THEN 'bridge'
                WHEN kunstbaute='Unterfuehrung' THEN 'underpass'
                WHEN kunstbaute='Staumauer, Wehr' THEN 'dam'
                WHEN kunstbaute='Staudamm' THEN 'dam'
                WHEN kunstbaute='Galerie' THEN 'gallery'
           END AS structure
    FROM swissnames3d_lin
    WHERE objektklas='TLM_STRASSE' AND kunstbaute NOT IN ('Keine', 'k_W')
);

CREATE OR REPLACE VIEW foot_path AS (
    SELECT geom, name FROM swissnames3d_lin
    WHERE objektklas='TLM_STRASSE' AND kunstbaute='Keine'
);

CREATE OR REPLACE VIEW climbing_route AS (
    SELECT geom, name FROM swissnames3d_lin
    WHERE objektklas='TLM_STRASSE' AND kunstbaute='k_W'
);
