CREATE OR REPLACE VIEW main_peak AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Hauptgipfel'
);

CREATE OR REPLACE VIEW alpine_peak AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Alpiner Gipfel'
);

CREATE OR REPLACE VIEW peak AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Gipfel'
);

CREATE OR REPLACE VIEW boulder AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Felskopf'
);

CREATE OR REPLACE VIEW main_hill AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Haupthuegel'
);

CREATE OR REPLACE VIEW hill AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Huegel'
);

CREATE OR REPLACE VIEW mountain_pass AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Pass'
);

CREATE OR REPLACE VIEW road_pass AS (
	SELECT geom, name FROM swissnames3d_pkt
	WHERE objektart='Strassenpass'
);
