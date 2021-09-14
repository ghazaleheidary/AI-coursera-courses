select c.country  as country , p.competency_id  as free_course_name 
from country_dim c
join country_percentile_dim p on p.iso3=c.iso3
join country_income_dim i on i.iso3=c.iso3
where p.percentile_category='Lagging (0-25%)' and i.country_income='Lower middle income'
