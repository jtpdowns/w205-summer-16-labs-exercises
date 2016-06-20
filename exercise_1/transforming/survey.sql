DROP TABLE surveys;

CREATE TABLE surveys AS
SELECT provider_id, patient_survey_star_rating
FROM survey_data;

