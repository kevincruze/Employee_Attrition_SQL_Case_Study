SELECT
    SUM(CASE WHEN HourlyRate > 50 THEN 1 ELSE 0 END) AS Above_50,
    SUM(CASE WHEN HourlyRate <= 50 THEN 1 ELSE 0 END) AS AtOrBelow_50,
    (SUM(CASE WHEN HourlyRate > 50 AND Attrition = TRUE THEN 1 ELSE 0 END) / SUM(CASE WHEN HourlyRate > 50 THEN 1 ELSE 0 END)) * 100 AS AttritionRate_Above_50,
    (SUM(CASE WHEN HourlyRate <= 50 AND Attrition = TRUE THEN 1 ELSE 0 END) / SUM(CASE WHEN HourlyRate <= 50 THEN 1 ELSE 0 END)) * 100 AS AttritionRate_AtOrBelow_50,
    Count(*) as Count
FROM `healthcare-worker-attrition.healthcare_worker_attrition.healthcare_worker_attrition_rate`