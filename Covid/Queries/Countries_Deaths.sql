-- Countries with highest death number
SELECT country_continent AS country, MAX(total_deaths) AS Total_Deaths
FROM coviddeaths
WHERE continent IS NOT NULL 
GROUP BY country_continent
HAVING MAX(total_deaths) IS NOT NULL
ORDER BY (MAX(total_deaths)) DESC