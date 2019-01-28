#libraries
library(ff)
library(ETLUtils)
library(odbc)
#query
sql <- "SELECT par_subida, par_bajada, serv_un_zp2, tipo_dia, media_hora,
                        SUM(CAST(factor_exp_etapa AS float)) as pax_transportados 
FROM [uchile].[dbo].[etapas201504_transparencia] 
WHERE (factor_exp_etapa <> '-') AND media_hora = '06:30:00' AND 
tipo_dia = 'LABORAL'
GROUP BY par_subida, par_bajada, serv_un_zp2, tipo_dia, media_hora;"
etapas <- ETLUtils::read.odbc.ffdf(query = sql, 
                       odbcConnect.args = list(dsn = "uchile", uid = "sa", pwd = "Estudios2017.."), 
                       VERBOSE = T)
