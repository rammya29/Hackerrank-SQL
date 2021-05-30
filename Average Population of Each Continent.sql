SELECT country.continent, floor(avg(city.population)) 
FROM country join city on city.countrycode = country.code group by country.continent;
