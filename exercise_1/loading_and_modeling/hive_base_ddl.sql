DROP TABLE hospital_data;
CREATE EXTERNAL TABLE hospital_data
(provider_id string,
hospital_name string,
address string,
city string,
state string,
zip_code string,
county_name string,
phone_number string,
hospital_type string,
hospital_ownership string,
emergency_services string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    'separatorChar' = ',',
    'quoteChar' = '"',
    'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/hospital_data';

DROP TABLE procedure_data;
CREATE EXTERNAL TABLE procedure_data
(provider_id string,
hospital_name string,
address string,
city string,
state string,
zip_code string,
county_name string,
phone_number string,
condition string,
measure_id string,
measure_name string,
score int,
sample int,
footnote string,
measure_start_date string,
measure_end_date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    'separatorChar' = ',',
    'quoteChar' = '"',
    'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/procedure_data';

DROP TABLE survey_data;
CREATE EXTERNAL TABLE survey_data
(provider_id string,
hospital_name string, 
address string,
city string,
state string,
zip_code string,
county_name string,
phone_number string,
hcahps_measure_id string,
hcahps_question string,
hcahps_answer_description string,
patient_survey_star_rating int,
patient_survey_star_rating_footnote string,
hcahps_answer_percent string,
hcahps_answer_percent_footnote string,
number_of_completed_surveys string,
number_of_completed_surveys_footnote string,
survey_response_rate_percent string,
survey_response_rate_percent_footnote string,
measure_start_date string,
measure_end_date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    'separatorChar' = ',',
    'quoteChar' = '"',
    'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/survey_data';

