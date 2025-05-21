SELECT
	p.name,
	c.name
from categories c
INNER JOIN products p ON c.id = p.id_categories
WHERE c.id in(1, 2, 3, 6, 9) and amount > 100
order by c.id asc;
