select *

from
(select country ,competency_id , 
CASE
    WHEN country_income='High income' and percentile_category='Competitive (50%-75%)' THEN '10%  raise'
    WHEN country_income='Upper middle income' and percentile_category='Competitive (50%-75%)' THEN '5%  raise'
	 WHEN country_income='lower middle income' and percentile_category='Competitive (50%-75%)' THEN '2%  raise'
	  WHEN country_income='Upper middle income' and percentile_category='Competitive (50%-75%)' THEN '5%  raise'
    ELSE '0% raise'
END raising_percent

from
(select c.country  as country , p.competency_id , p.percentile_category , i.country_income

from country_dim c
join country_percentile_dim p on p.iso3=c.iso3
join country_income_dim i on i.iso3=c.iso3)sub
)sub2
where not  raising_percent='0% raise'