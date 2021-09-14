select AVG(p.percentile_rank) country_avg , c.country from country_percentile_dim p
join country_dim c on p.iso3=c.iso3
group by c.country
order by country_avg desc
