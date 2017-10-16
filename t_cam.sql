SELECT paraderobajada_1era AS ParaderoBajada, paraderosubida_2da AS ParaderoSubida, netapa,
AVG(CAST(tcaminata_1era_etapa AS FLOAT)) AS AVGCam, 
MAX(CAST(tcaminata_1era_etapa AS FLOAT)) AS MAXCam, 
MIN(CAST(tcaminata_1era_etapa AS FLOAT)) AS MINCam, 
STDEVP(CAST(tcaminata_1era_etapa AS FLOAT)) AS STDEVCam, 
COUNT(paraderosubida_2da) AS Ntransbordos
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND netapa = '2' AND paraderobajada_1era <> '-' AND 
paraderosubida_2da <> '-' AND tcaminata_1era_etapa <> '-' 
GROUP BY paraderobajada_1era, paraderosubida_2da, netapa 
UNION
SELECT paraderobajada_2da AS ParaderoBajada, paraderosubida_3era AS ParaderoSubida, netapa, 
AVG(CAST(tcaminata_2da_etapa AS FLOAT)) AS AVGCam, 
MAX(CAST(tcaminata_2da_etapa AS FLOAT)) AS MAXCam, 
MIN(CAST(tcaminata_2da_etapa AS FLOAT)) AS MINCam, 
STDEVP(CAST(tcaminata_2da_etapa AS FLOAT)) AS STDEVCam, 
COUNT(paraderosubida_3era) AS Ntransbordos
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND netapa = '3' AND paraderobajada_2da <> '-' AND 
paraderosubida_3era <> '-' AND tcaminata_2da_etapa <> '-' 
GROUP BY paraderobajada_2da, paraderosubida_3era, netapa
UNION
SELECT paraderobajada_3era AS ParaderoBajada, paraderosubida_4ta AS ParaderoSubida, netapa, 
AVG(CAST(tcaminata_3era_etapa AS FLOAT)) AS AVGCam, 
MAX(CAST(tcaminata_3era_etapa AS FLOAT)) AS MAXCam, 
MIN(CAST(tcaminata_3era_etapa AS FLOAT)) AS MINCam, 
STDEVP(CAST(tcaminata_3era_etapa AS FLOAT)) AS STDEVCam, 
COUNT(paraderosubida_4ta) AS Ntransbordos
FROM viajes201504_transparencia
WHERE periodomediodeviaje = '04 - PUNTA MANANA' AND netapa = '4' AND paraderobajada_3era <> '-' AND 
paraderosubida_4ta <> '-' AND tcaminata_3era_etapa <> '-' 
GROUP BY paraderobajada_3era, paraderosubida_4ta, netapa;
