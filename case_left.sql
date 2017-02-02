SELECT CASE WHEN LEFT([Código Usuario], 1) = 'B' THEN 
SUM(CAST(REPLACE([KM PO], ',', '.') AS float)) ELSE 0 END  
FROM [JP].[dbo].[A3 DEL 01-01-2015]
WHERE MONTH(Fecha) = MONTH('30-04-2016') AND YEAR(Fecha) = YEAR('30-04-2016')
GROUP BY [Código Usuario]
