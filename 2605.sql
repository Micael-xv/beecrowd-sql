select 
    p.name as product_name, pr.name as provider_name
from products p
join providers pr on (p.id_providers = pr.id)
where p.id_categories = 6;