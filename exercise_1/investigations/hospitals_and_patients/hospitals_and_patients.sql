SELECT CORR(p_scores.score, s_scores.rating)
FROM (SELECT provider_id, AVG(score) as score
      FROM procedures
      GROUP BY provider_id) as p_scores
JOIN (SELECT provider_id, AVG(patient_survey_star_rating) as rating
      FROM surveys
      GROUP BY provider_id) as s_scores
ON p_scores.provider_id = s_scores.provider_id

