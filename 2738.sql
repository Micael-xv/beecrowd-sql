SELECT 
    c.name,
    ROUND(((math * 2) + (specific * 3) + (project_plan * 5)) / 10.0, 2) AS avg
FROM candidate c
INNER JOIN score s ON c.id = s.candidate_id
ORDER by AVG DESC;
