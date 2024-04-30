SELECT
  SUM(CASE WHEN HourlyRate > 65 THEN 1 ELSE 0 END) AS Above_65,
  SUM(CASE WHEN HourlyRate <= 65 THEN 1 ELSE 0 END) AS AtOrBelow_65,
  (SUM(CASE WHEN HourlyRate > 65 AND Attrition = TRUE THEN 1 ELSE 0 END) / SUM(CASE WHEN HourlyRate > 65 THEN 1 ELSE 0 END)) * 100 AS AttritionRate_Above_65,
   (SUM(CASE WHEN HourlyRate <= 65 AND Attrition = TRUE THEN 1 ELSE 0 END) / SUM(CASE WHEN HourlyRate <= 65 THEN 1 ELSE 0 END)) * 100 AS AttritionRate_AtOrBelow_65,
  Count(*) as Count
FROM `healthcare-worker-attrition.healthcare_worker_attrition.healthcare_worker_attrition_rate`