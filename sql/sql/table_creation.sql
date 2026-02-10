CREATE TABLE states_info 
SELECT state, literacy_rate
FROM raw_population;

CREATE TABLE population_stats
SELECT state, population, males, females
FROM raw_population;
