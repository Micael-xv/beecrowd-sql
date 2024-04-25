  SELECT
  	c.name,
    rentals_date
  FROM rentals as r
  inner join customers as c on (r.id_customers = c.id) 
  where extract(month from r.rentals_date) = 9;