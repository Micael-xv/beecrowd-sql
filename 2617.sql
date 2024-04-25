SELECT 
	p.name,
    pr.name
from products as p
inner join providers as pr on (p.id_providers = pr.id)
WHERE pr.name like 'Ajax SA';