SELECT
	p.name,
    pr.name,
    p.price
from products as p
inner JOIN categories as c on (p.id_categories = c.id)
inner join providers as pr on (p.id_providers = pr.id)
WHERE p.price > 1000 and c.name like 'Super Luxury';