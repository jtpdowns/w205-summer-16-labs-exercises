tail -n +2 data/Hospital\ General\ Information.csv > data/hospital.csv
tail -n +2 data/Timely\ and\ Effective\ Care\ -\ Hospital.csv > data/procedure.csv
tail -n +2 data/HCAHPS\ -\ Hospital.csv > data/survey.csv

hdfs dfs -mkdir /user/w205/exercise_1
hdfs dfs -mkdir /user/w205/exercise_1/hospital_data
hdfs dfs -mkdir /user/w205/exercise_1/procedure_data
hdfs dfs -mkdir /user/w205/exercise_1/survey_data

hdfs dfs -put data/hospital.csv /user/w205/exercise_1/hospital_data/h_raw
hdfs dfs -put data/procedure.csv /user/w205/exercise_1/procedure_data/p_raw
hdfs dfs -put data/survey.csv /user/w205/exercise_1/survey_data/s_raw

