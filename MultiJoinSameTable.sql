SELECT SUM(CAST([f_exp_servicioperiodots]AS FLOAT)) AS DDA, [par_subida], [mh_subida],[tipo_transporte], 
[mh_bajada],[servicio_subida],[par_bajada], [uchile].[dbo].[peri_mh].[PER_DTPM2] AS PerSub, 
DAY([tiempo_subida]) AS DiaSub, DAY([tiempo_bajada]) AS DiaBaj,
peri_mh2.[PER_DTPM2] AS PerBaj
FROM [uchile].[dbo].[etapas201804_laboral_transparencia]
INNER JOIN [uchile].[dbo].[peri_mh] ON [uchile].[dbo].[etapas201804_laboral_transparencia].[mh_subida] = [uchile].[dbo].[peri_mh].[HR_MH]
INNER JOIN [uchile].[dbo].[peri_mh] AS peri_mh2 ON [uchile].[dbo].[etapas201804_laboral_transparencia].[mh_bajada] = [uchile].[dbo].[peri_mh].[HR_MH]
GROUP BY [par_subida], [mh_subida],[tipo_transporte], [mh_bajada],[servicio_subida],[par_bajada], [uchile].[dbo].[peri_mh].[PER_DTPM2], peri_mh2.[PER_DTPM2],
DAY([tiempo_subida]), DAY([tiempo_bajada]);
