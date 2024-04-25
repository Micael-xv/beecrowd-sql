  select 
  	products.id,
    products.name
  from products 
  inner join categories on (categories.id = products.id_categories)
  WHERE categories.name like 'super%';