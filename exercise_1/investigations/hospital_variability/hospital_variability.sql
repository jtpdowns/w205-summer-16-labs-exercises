SELECT condition, STDDEV(score) as deviation
FROM procedures
GROUP BY condition
ORDER BY deviation DESC
LIMIT 10;

