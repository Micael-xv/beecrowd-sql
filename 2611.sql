 select 
  	m.id,
    m.name
 from movies as m
 inner JOIN genres as g on (m.id_genres = g.id)
 WHERE lower(g.description) = 'action';