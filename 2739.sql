SELECT 
    name,
    EXTRACT(day FROM payday)::int AS day
FROM loan;
