CREATE OR REPLACE VIEW ferry AS (
    SELECT geom,
           name,
           CASE WHEN objektart='Personenfaehre mit Seil' THEN 'passenger_ferry_rope'
                WHEN objektart='Personenfaehre ohne Seil' THEN 'passenger_ferry'
                WHEN objektart='Autofaehre' THEN 'car_ferry'
           END AS type
    FROM swissnames3d_lin
    WHERE objektklas='TLM_SCHIFFFAHRT'
);
