-- Economic Loss by Conflict Type
SELECT
	Conflict_Type,
    ROUND(AVG(Economic_Loss_USD_Billions), 3) AS avg_economic_loss_USD_B,
    ROUND(SUM(Economic_Loss_USD_Billions), 3) AS total_economic_loss_USD_B
FROM global_conflicts_dataset
GROUP BY Conflict_Type
ORDER BY avg_economic_loss_USD_B DESC;

-- GDP VS Economic loss
SELECT
	Country_A,
    Country_B,
	ROUND(GDP_A_Billions + GDP_B_Billions, 2) AS Total_GDP,
    ROUND(Economic_Loss_USD_Billions, 3) AS economic_loss_USD_B
FROM global_conflicts_dataset
ORDER BY Total_GDP DESC
LIMIT 50;

