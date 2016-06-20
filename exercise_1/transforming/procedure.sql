DROP TABLE procedures;

CREATE TABLE procedures AS
SELECT provider_id, condition, measure_id, measure_name, score, sample
FROM procedure_data;

