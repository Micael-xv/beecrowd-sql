SELECT 
	m.id,
    m.name
FROM movies as m
inner join prices as p on (m.id_prices = p.id)
WHERE p.value < 2.00;