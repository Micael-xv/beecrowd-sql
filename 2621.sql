select 
	p.name
from products as p
inner join providers as pr on (p.id_providers = pr.id)
where amount >= 10 and amount <= 20 and pr.name like 'P%';