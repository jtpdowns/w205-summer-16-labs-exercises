DROP TABLE procedures;

CREATE TABLE procedures AS
SELECT provider_id, condition, score
FROM procedure_data;

