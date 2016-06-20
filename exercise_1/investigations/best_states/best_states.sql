SELECT hospitals.state, AVG(procedures.score) as score
FROM hospitals JOIN procedures
ON hospitals.provider_id = procedures.provider_id
GROUP BY hospitals.state
ORDER BY score DESC
LIMIT 10;

