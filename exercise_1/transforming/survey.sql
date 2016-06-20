DROP TABLE surveys;

CREATE TABLE surveys AS
SELECT provider_id, hcahps_question string, patient_survey_star_rating
FROM survey_data;

