SELECT SUM(CAST(factorexpansion AS FLOAT)) AS Dda, paraderosubida, paraderobajada, S.IDMODELO AS IDTCAD_SUB, B.IDMODELO AS IDTCAD_BAJ, 
S.ZONA_ESTRAUS AS EstrausSubida, B.ZONA_ESTRAUS AS EstrausBajada
  FROM [U_CHILE].[dbo].[viajes201504_transparencia]
  INNER JOIN [DiccionarioParaderos_Abril2015] AS S ON 
  [viajes201504_transparencia].paraderosubida = S.[Código paradero TS (INFRA)]
  INNER JOIN [DiccionarioParaderos_Abril2015] AS B ON 
  [viajes201504_transparencia].paraderobajada = B.[Código paradero TS (INFRA)]
  WHERE factorexpansion <> '-' AND S.IDMODELO <> '-' AND B.IDMODELO <> '-'
  GROUP BY paraderosubida, paraderobajada, diseno777subida, diseno777bajada, S.ZONA_ESTRAUS, B.ZONA_ESTRAUS, S.IDMODELO, B.IDMODELO;
