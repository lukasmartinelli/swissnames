CREATE OR REPLACE VIEW river AS (
    SELECT geom, name FROM swissnames3d_lin
    WHERE objektart='Fliessgewaesser'
);
