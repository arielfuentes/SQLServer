SELECT SUM(CAST(factorexpansion AS FLOAT)) AS Dda, AVG(CAST(tviaje_min AS FLOAT)) AS AVGT, MAX(CAST(tviaje_min AS FLOAT)) AS MAXT, 
MIN(CAST(tviaje_min AS FLOAT)) AS MINT, STDEVP(CAST(tviaje_min AS FLOAT)) AS STDEVT, paraderosubida, paraderobajada
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND paraderosubida <> '-' AND 
paraderobajada <> '-' AND factorexpansion <> '-' AND tviaje_min <> '-'
GROUP BY paraderosubida, paraderobajada;
