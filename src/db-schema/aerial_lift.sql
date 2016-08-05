CREATE OR REPLACE VIEW aerial_lift AS (
    SELECT geom, name, 'ski_lift' AS type FROM swissnames3d_lin
    WHERE objektart='Skilift'
    UNION ALL
    SELECT geom, name, 'gondola_lift' AS type FROM swissnames3d_lin
    WHERE objektart='Gondelbahn'
    UNION ALL
    SELECT geom, name, 'aerial_cableway' AS type FROM swissnames3d_lin
    WHERE objektart='Luftseilbahn'
    UNION ALL
    SELECT geom, name, 'chair_lift' AS type FROM swissnames3d_lin
    WHERE objektart='Sesselbahn'
    UNION ALL
    SELECT geom, name, 'transport_cable' AS type FROM swissnames3d_lin
    WHERE objektart='Transportseil'
);
