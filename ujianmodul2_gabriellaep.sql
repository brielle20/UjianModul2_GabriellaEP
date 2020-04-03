-- QUERY TEST 

-- Menggunakan database world 
use world;
show tables;

-- Nomor 1 
SELECT * from City
WHERE CountryCode = 'IDN'
ORDER BY Population DESC LIMIT 10;

-- Nomor 2 
SELECT * from City
ORDER BY Population DESC LIMIT 10;

-- Nomor 3 
Select c.code, c.name, cl.language, cl.isOfficial, cl. Percentage  from country c
JOIN (countrylanguage cl) ON c.code = cl.countrycode
WHERE cl.Language = 'English'
ORDER BY cl.percentage DESC limit 10;

-- Nomor 4 
SELECT name, continent, lifeexpectancy, gnp from country
WHERE continent = 'Asia' AND lifeexpectancy > (select AVG(lifeexpectancy) from country 
where continent = 'Europe')
ORDER BY lifeexpectancy desc Limit 10;