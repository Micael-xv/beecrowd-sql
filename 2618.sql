SELECT 
	p.name,
    pr.name,
    c.name
from products as p
inner join categories as c on (p.id_categories = c.id)
inner JOIN providers as pr on (p.id_providers = pr.id)
where c.name = 'Imported' and pr.name = 'Sansul SA';