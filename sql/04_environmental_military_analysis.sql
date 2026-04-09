-- Conflict Duration by Terrain
SELECT
	Terrain_Type,
    ROUND(AVG(Duration_Days), 0) AS avg_duration_days
FROM global_conflicts_dataset
GROUP BY Terrain_Type
ORDER BY avg_duration_days DESC;

-- Climate Zone and Civilian Deaths
SELECT
	Climate_Zone,
    ROUND(AVG(Civilian_Deaths), 0) AS avg_civilian_deaths
FROM global_conflicts_dataset
GROUP BY Climate_Zone
ORDER BY avg_civilian_deaths DESC;