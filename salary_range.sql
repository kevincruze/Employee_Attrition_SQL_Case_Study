SELECT
  HourlyRate,
FROM `healthcare-worker-attrition.healthcare_worker_attrition.healthcare_worker_attrition_rate`
GROUP BY HourlyRate
ORDER BY HourlyRate DESC