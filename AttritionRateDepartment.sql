SELECT
  Department,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS AttritionCount,
  SUM(CASE WHEN Attrition = FALSE THEN 1 ELSE 0 END) AS NonAttritionCount,
  (SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / Count(*)) * 100 AS PercentAttrition,
FROM `healthcare-worker-attrition.healthcare_worker_attrition.healthcare_worker_attrition_rate` 
GROUP BY Department
Order By Department