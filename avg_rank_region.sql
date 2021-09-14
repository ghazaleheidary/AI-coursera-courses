select top 10 AVG(p.percentile_rank) percentile_rank  , r.region ,p.competency_id
from  country_percentile_dim p 
join region_dim r on r.iso3=p.iso3
group by  competency_id , r.region 
order by percentile_rank desc 
 