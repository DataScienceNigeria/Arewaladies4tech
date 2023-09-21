CREATE TABLE project.CovidDeaths (
iso_code TEXT,
continent TEXT,
location TEXT,
date TEXT,
population bigint,
total_cases int,
new_cases int,
new_cases_smoothed double,
total_deaths int,
new_deaths int,
new_deaths_smoothed double,
total_cases_per_million double,
new_cases_per_million double,
new_cases_smoothed_per_million double,
total_deaths_per_million double,
new_deaths_per_million decimal,
new_deaths_smoothed_per_million double,
reproduction_rate double,
icu_patients double,
icu_patients_per_million double,
hosp_patients int,
hosp_patients_per_million double,
weekly_icu_admissions int,
weekly_icu_admissions_per_million double,
weekly_hosp_admissions int,
weekly_hosp_admissions_per_million double);

select date from project.coviddeaths;

CREATE TABLE project.CovidVacc(
iso_code TEXT,
continent TEXT,
location TEXT,
date TEXT,
total_tests int,
new_tests int,
total_tests_per_thousand double,
new_tests_per_thousand double,
new_tests_smoothed int,
new_tests_smoothed_per_thousand double,
positive_rate double,
tests_per_case double,
tests_units varchar(30),
total_vaccinations bigint,
people_vaccinated bigint,
people_fully_vaccinated bigint,
total_boosters bigint,
new_vaccinations bigint,
new_vaccinations_smoothed bigint,
total_vaccinations_per_hundred double,
people_vaccinated_per_hundred double,
people_fully_vaccinated_per_hundred double,
total_boosters_per_hundred double,
new_vaccinations_smoothed_per_million bigint,
new_people_vaccinated_smoothed int,
new_people_vaccinated_smoothed_per_hundred double,
stringency_index double,
population_density double,
median_age double,
aged_65_older double,
aged_70_older double,
gdp_per_capita double,
extreme_poverty double,
cardiovasc_death_rate double,
diabetes_prevalence double,
female_smokers double,
male_smokers double,
handwashing_facilities double,
hospital_beds_per_thousand double,
life_expectancy double,
human_development_index double,
excess_mortality_cumulative_absolute double,
excess_mortality_cumulative double,
excess_mortality double,
excess_mortality_cumulative_per_million double
 );
 select date from project.covidvacc;
 
 
 SELECT * FROM project.coviddeaths ORDER BY 3,4;
-- selecting data to use 
SELECT Location, date, total_cases, total_deaths, population
FROM project.coviddeaths
ORDER BY 1,2;
-- Total Deaths vs Total Cases
SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS deathpercentage
FROM project.coviddeaths
WHERE location LIKE 'Niger%'
ORDER BY date;
 
 -- Total Cases vs Population
SELECT Location, date, total_cases, population, (total_cases/population)*100 AS InfectionPercent
FROM project.coviddeaths
WHERE location LIKE '%states%'
ORDER BY date;

SET SQL_SAFE_UPDATES = 1;

alter table project.covidvacc
modify date date;

-- SELECT date from project.covidvacc ORDER BY date; 
update project.covidvacc
set date=str_to_date(date, '%m/%d/%Y');

SELECT location, population, MAX(total_cases) AS HighestInfectionCount, MAX((total_cases/population))*100 AS MaxInfectionPercent
FROM project.coviddeaths
-- WHERE location LIKE '%states%'
GROUP BY location, population 
ORDER BY MaxInfectionPercent DESC;

-- Showing Countries with Highest Deaths
SELECT location, MAX(total_deaths) AS TotalDeathCount
FROM project.coviddeaths
-- WHERE location LIKE '%states%'
WHERE continent IS NOT NULL
GROUP BY location 
ORDER BY TotalDeathCount DESC; 

-- Break down Totaldeathcount by CONTINENT
SELECT continent, MAX(total_deaths) AS TotalDeathCount
FROM project.coviddeaths
WHERE continent IS NOT NULL
GROUP BY continent 
ORDER BY TotalDeathCount DESC; 

-- GLOBAL NUMBERS
SELECT SUM(new_cases) AS TotalCases, SUM(new_deaths) AS TotalDeaths, SUM(new_deaths)/SUM(new_cases) AS Deathpercentage
FROM project.coviddeaths
WHERE continent IS NOT NULL
-- GROUP BY date
ORDER BY 1,2; 

-- Looking at total population vs Vaccination 
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS 
RollingPeopleVacc
FROM project.coviddeaths AS dea 
JOIN project.covidvacc AS vac
ON dea.location = vac.location
AND dea.date = vac.date
WHERE dea.continent IS NOT NULL
ORDER BY 2,3;

-- USing CTE  
WITH PopvsVac (Continent, Location, Date, Population, New_vaccinations, RollingPeopleVacc) AS
(
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS 
RollingPeopleVacc
FROM project.coviddeaths AS dea 
JOIN project.covidvacc AS vac
ON dea.location = vac.location
AND dea.date = vac.date
WHERE dea.continent IS NOT NULL
-- ORDER BY 2,3
)
SELECT *, (RollingPeopleVacc/population) FROM PopvsVac;

-- Temp Table

CREATE TEMPORARY TABLE project.PercentPopVac
(
continent varchar(255),  
Location varchar(255), 
Date date, 
Population bigint, 
New_vaccinations bigint, 
RollingPeopleVacc bigint
);
drop temporary table project.PercentPopVac;

INSERT INTO project.PercentPopVac
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS 
RollingPeopleVacc
FROM project.coviddeaths AS dea 
JOIN project.covidvacc AS vac
ON dea.location = vac.location
AND dea.date = vac.date
-- WHERE dea.continent IS NOT NULL
;
SELECT *, (RollingPeopleVacc/population) FROM project.PercentPopVac;

-- Creating View to store Data for Visualization

CREATE VIEW project.PercentPopVac AS  
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS 
RollingPeopleVacc
FROM project.coviddeaths AS dea 
JOIN project.covidvacc AS vac
ON dea.location = vac.location
AND dea.date = vac.date
WHERE dea.continent IS NOT NULL
ORDER BY 2,3
;

