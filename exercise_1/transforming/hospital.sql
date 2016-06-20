DROP TABLE hospitals;

CREATE TABLE hospitals AS
SELECT provider_id, hospital_name, state
FROM hospital_data;

