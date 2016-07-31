CREATE OR REPLACE FUNCTION settlement_type(objektart VARCHAR) RETURNS VARCHAR
AS $$
BEGIN
    RETURN CASE
        WHEN objektart = 'Ort'          THEN 'place'
        WHEN objektart = 'Ortsteil'     THEN 'district'
        WHEN objektart = 'Quartier'     THEN 'quarter'
        WHEN objektart = 'Quartierteil' THEN 'neighbourhood'
    END;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE OR REPLACE VIEW settlement AS (
    SELECT geom, name, settlement_type(objektart) AS type, REPLACE(einwohnerk, ' bis ', ' to ') AS population_class FROM swissnames3d_ply
    WHERE objektart IN ('Quartierteil', 'Ort', 'Ortsteil', 'Quartier')
);
