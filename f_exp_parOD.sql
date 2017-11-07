SELECT t1.[paraderosubida], t1.[paraderobajada], t1.DdaPMA, t2.DdaDLN, t2.DdaDLN/t1.DdaPMA AS f_exp 
FROM 
(SELECT SUM(CAST([factorexpansion] AS FLOAT))/5 AS DdaPMA, [paraderosubida], [paraderobajada], 
{fn CONCAT([paraderosubida], [paraderobajada])} AS SubBaj
FROM [uchile].[dbo].[viajes201708]
WHERE [periodomediodeviaje] = '04 - PUNTA MANANA' AND [paraderosubida] <> '-' AND [paraderobajada] <> '-'
GROUP BY [paraderosubida], [paraderobajada]) t1
LEFT JOIN 
(SELECT SUM(CAST([factorexpansion] AS FLOAT))/5 AS DdaDLN, [paraderosubida], [paraderobajada],
{fn CONCAT([paraderosubida], [paraderobajada])} AS SubBaj
FROM [uchile].[dbo].[viajes201708]
WHERE [paraderosubida] <> '-' AND [paraderobajada] <> '-'
GROUP BY [paraderosubida], [paraderobajada]) t2
ON t1.SubBaj = t2.SubBaj;
