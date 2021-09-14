select top 20 AVG(p.percentile_rank) percentile_rank  , c.country ,p.competency_id
from  country_percentile_dim p 
join country_dim c on c.iso3=p.iso3
group by  competency_id , c.country
order by percentile_rank asc 