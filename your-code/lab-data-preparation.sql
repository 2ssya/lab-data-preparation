
-- 1. How many days are recorded?
SELECT COUNT(*) AS total_days
FROM austin_weather;
-- 2. Day with the highest temperature (TempHighF)?
SELECT Date, TempHighF
FROM austin_weather
ORDER BY TempHighF DESC
LIMIT 1;
-- 3.  What is the average Humidity across all days? (column HumidityAvgPercent)
SELECT AVG(CAST(HumidityAvgPercent AS DECIMAL(5,2))) AS  avg_humidity
FROM austin_weather
WHERE HumidityAvgPercent NOT IN ('T', ' ', '');
-- 4.Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
SELECT Date, SeaLevelPressureAvgInches
FROM austin_weather
WHERE CAST(DewPointAvgF AS DECIMAL(5,2)) > 28
ORDER BY CAST(SeaLevelPressureAvgInches AS DECIMAL(5,2)) DESC
LIMIT 10;