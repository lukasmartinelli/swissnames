CREATE OR REPLACE VIEW railway_structure AS (
    SELECT geom,
           name,
           CASE WHEN objektart='Kleinbahn' THEN 'mini_gauge'
                WHEN objektart='Schmalspur' THEN 'narrow_gauge'
                WHEN objektart='Normalspur' THEN 'gauge'
           END AS track_type,
           CASE WHEN kunstbaute='Tunnel' THEN 'tunnel'
                WHEN kunstbaute='Bruecke' THEN 'bridge'
                WHEN kunstbaute='Galerie' THEN 'gallery'
           END AS structure
    FROM swissnames3d_lin
    WHERE objektklas='TLM_EISENBAHN'
);
