CREATE OR REPLACE VIEW stadion AS (
    SELECT geom, name FROM swissnames3d_pkt
    WHERE gebaeudenu='Stadion'
);
