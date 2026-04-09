-- conflict_trends_analysis

SELECT Conflict_Type, COUNT(*) AS Total_Conflicts
FROM global_conflicts_dataset
GROUP BY Conflict_Type
ORDER BY Total_Conflicts DESC;

-- Conflicts Over Time
SELECT 
	Year, 
    COUNT(*) AS total_conflicts
FROM global_conflicts_dataset
GROUP BY Year
ORDER BY Year;

-- Conflicts Per Decade
SELECT 
FLOOR(Year/10)*10 AS decade,
COUNT(*) AS total_conflicts
FROM global_conflicts_dataset
GROUP BY decade
ORDER BY decade;

-- Average Conflict Duration by Type
SELECT 
	Conflict_Type,
    ROUND(AVG(Duration_Days), 0) AS avg_duration_days
FROM global_conflicts_dataset
GROUP BY Conflict_Type
ORDER BY avg_duration_days DESC;

-- Civilian Deaths by Conflict Type
SELECT 
	Conflict_Type,
    ROUND(AVG(Civilian_Deaths), 0) AS Avg_civilian_deaths
FROM global_conflicts_dataset
GROUP BY Conflict_Type
ORDER BY Avg_civilian_deaths DESC;