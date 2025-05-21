SELECT name, customers_number
FROM (
    SELECT 
        name,
        customers_number,
        1 AS ordem
    FROM lawyers
    WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers)

    UNION

    SELECT 
        name,
        customers_number,
        2 AS ordem
    FROM lawyers
    WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers)

    UNION

    SELECT 
        'Average' AS name,
        ROUND(AVG(customers_number)) AS customers_number,
        3 AS ordem
    FROM lawyers
) AS resultado

ORDER BY ordem;
