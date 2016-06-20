SELECT hospitals.hospital_name, hospitals.state, AVG(procedures.score) as score
FROM hospitals JOIN procedures
ON hospitals.provider_id = procedures.provider_id
GROUP BY hospitals.hospital_name
ORDER BY score DESC
LIMIT 10;

