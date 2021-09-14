
select country_avg , country,
CASE
    WHEN country_avg > 0.75 THEN 'highly developed'
    WHEN  country_avg >0.50 and country_avg< 0.75 THEN 'developed'
	 WHEN  country_avg >0.25 and country_avg< 0.50 THEN ' low developed'
    ELSE 'not developed'
	end
from 
(select AVG(p.percentile_rank) country_avg , c.country 
from country_percentile_dim p
join country_dim c on p.iso3=c.iso3
group by c.country
) sub
