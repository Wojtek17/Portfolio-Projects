-- Total deaths to total cases
SELECT country_continent, SUM(total_deaths) AS deaths_sum,SUM(total_cases) AS cases_sum, ROUND(CAST((MAX(total_deaths)) AS DECIMAL)/(MAX(total_cases)),2)*100 AS deaths_to_cases_percentage
FROM coviddeaths
WHERE continent IS NOT NULL
GROUP BY country_continent
HAVING SUM(total_deaths)>0 AND SUM(total_cases)>0
ORDER BY ROUND(CAST((SUM(total_deaths)) AS DECIMAL)/(SUM(total_cases)),4) DESC)