SELECT 
	  doctors.name,
    round(sum((attendances.hours * 150) + ((attendances.hours * 150) * work_shifts.bonus) / 100),1) as salary 
from attendances
inner join doctors on attendances.id_doctor = doctors.id
inner join work_shifts on attendances.id_work_shift = work_shifts.id
GROUP by doctors.name
ORDER by salary desc;