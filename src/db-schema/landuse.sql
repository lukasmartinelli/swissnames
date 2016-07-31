CREATE OR REPLACE VIEW monastery AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Klosterareal'
);

CREATE OR REPLACE VIEW sewage_clarification AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Abwasserreinigungsareal'
);

CREATE OR REPLACE VIEW substation AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Unterwerkareal'
);

CREATE OR REPLACE VIEW hospital AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Spitalareal'
);

CREATE OR REPLACE VIEW incineration AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Kehrrichtverbrennungsareal'
);

CREATE OR REPLACE VIEW landfill AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Deponieareal'
);

CREATE OR REPLACE VIEW prison AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Massnahmenvollzugsanstaltsareal'
);

CREATE OR REPLACE VIEW power_planet AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Kraftwerkareal'
);

CREATE OR REPLACE VIEW school AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Schul- und Hochschulareal'
);

CREATE OR REPLACE VIEW historic AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Historisches Areal'
);

CREATE OR REPLACE VIEW cemetery AS (
    SELECT geom, name FROM swissnames3d_ply
    WHERE objektart='Friedhof'
);
