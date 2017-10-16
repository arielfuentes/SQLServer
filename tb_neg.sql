SELECT paraderobajada_1era AS ParaderoBajada, paraderosubida_2da AS ParaderoSubida, netapa, serv_2da_etapa,
AVG(CAST(ttrasbordo_1era_etapa AS FLOAT)) AS Tiempo_minTB, 
CASE WHEN(CAST(tespera_1era_etapa AS FLOAT)) > 0  THEN AVG(CAST(tespera_1era_etapa AS FLOAT)) ELSE -999.999 END AS Tiempo_minEsp, 
AVG(CAST(tcaminata_1era_etapa AS FLOAT)) AS Tiempo_minCam, COUNT(paraderosubida_2da) AS Ntransbordos
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND netapa = '2' AND paraderobajada_1era <> '-' AND 
paraderosubida_2da <> '-' AND tespera_1era_etapa <> '-' AND tcaminata_1era_etapa <> '-' 
GROUP BY paraderobajada_1era, paraderosubida_2da, netapa, tespera_1era_etapa, serv_2da_etapa
UNION
SELECT paraderobajada_2da AS ParaderoBajada, paraderosubida_3era AS ParaderoSubida, netapa, serv_3era_etapa,
AVG(CAST(ttrasbordo_2da_etapa AS FLOAT)) AS Tiempo_minTB, 
CASE WHEN(CAST(tespera_2da_etapa AS FLOAT)) > 0  THEN AVG(CAST(tespera_2da_etapa AS FLOAT)) ELSE -999.999 END AS Tiempo_minEsp, 
AVG(CAST(tcaminata_2da_etapa AS FLOAT)) AS Tiempo_minCam, COUNT(paraderosubida_3era) AS Ntransbordos
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND netapa = '3' AND paraderobajada_2da <> '-' AND 
paraderosubida_3era <> '-' AND tespera_2da_etapa <> '-' AND tcaminata_2da_etapa <> '-' 
GROUP BY paraderobajada_2da, paraderosubida_3era, netapa, tespera_2da_etapa, serv_3era_etapa
UNION
SELECT paraderobajada_3era AS ParaderoBajada, paraderosubida_4ta AS ParaderoSubida, netapa, serv_4ta_etapa,
AVG(CAST(ttrasbordo_3era_etapa AS FLOAT)) AS Tiempo_minTB, 
CASE WHEN(CAST(tespera_3era_etapa AS FLOAT)) > 0  THEN AVG(CAST(tespera_3era_etapa AS FLOAT)) ELSE -999.999 END AS Tiempo_minEsp, 
AVG(CAST(tcaminata_3era_etapa AS FLOAT)) AS Tiempo_minCam, COUNT(paraderosubida_4ta) AS Ntransbordos
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND netapa = '4' AND paraderobajada_3era <> '-' AND 
paraderosubida_4ta <> '-' AND tespera_3era_etapa <> '-' AND tcaminata_3era_etapa <> '-' 
GROUP BY paraderobajada_3era, paraderosubida_4ta, netapa, tespera_3era_etapa, serv_4ta_etapa;
