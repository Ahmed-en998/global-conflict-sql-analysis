-- data_validation

SELECT COUNT(*)
FROM global_conflicts_dataset;

SELECT *
FROM global_conflicts_dataset
LIMIT 10;

SELECT MIN(Year), MAX(Year)
FROM global_conflicts_dataset;

SELECT *
FROM global_conflicts_dataset
WHERE Civilian_Deaths < 0
	OR Military_Deaths_A < 0
    OR Military_Deaths_B < 0;