-- Data for TLM EINZELOBJEKT

CREATE OR REPLACE VIEW viewpoint AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Aussichtspunkt'
);

CREATE OR REPLACE VIEW border_stone AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Landesgrenzstein'
);

CREATE OR REPLACE VIEW spring AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Quelle'
);

CREATE OR REPLACE VIEW memorial AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Denkmal'
);

CREATE OR REPLACE VIEW waterfall AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Wasserfall'
);

CREATE OR REPLACE VIEW cave AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Grotte, Hoehle'
);

CREATE OR REPLACE VIEW wayside_shrine AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Bildstock'
);

CREATE OR REPLACE VIEW well AS (
	SELECT geom, name FROM swissnames3d_pkt
    WHERE objektart='Brunnen'
);
