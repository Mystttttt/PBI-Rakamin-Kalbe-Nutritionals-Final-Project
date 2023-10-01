-- Umur rata - rata berdasarkan gender
select 
	case 
		when gender = 0 then 'Female'
		when gender = 1 then 'Male'
		else 'Unknown'
	end as gender,
	ROUND(avg(age)) as average_age
from customer c 
where gender is not null 
group by gender