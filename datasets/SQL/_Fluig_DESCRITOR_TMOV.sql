USE [corporerm]
GO

/****** Object:  View [dbo].[_Fluig_DESCRITOR_TMOV]    Script Date: 11/05/2021 18:20:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER VIEW [dbo].[_Fluig_DESCRITOR_TMOV]

AS

SELECT 
TMOV.IDMOV,
CASE
	WHEN (SELECT DATAVENCIMENTO FROM FLAN WHERE IDMOV=TMOV.IDMOV) IS NULL THEN FCFO.NOMEFANTASIA+' - '+format (TMOV.VALORBRUTO, 'c', 'pt-br') 
	ELSE 'DT.VENC. '+(SELECT CONVERT(varchar, DATAVENCIMENTO,103) FROM FLAN WHERE IDMOV=TMOV.IDMOV)+' - '+FCFO.NOMEFANTASIA+' - '+format (TMOV.VALORBRUTO, 'c', 'pt-br') 
	END AS DESCRITOR

FROM TMOV 
		JOIN TITMMOVWFLUIG ON (TMOV.IDMOV=TITMMOVWFLUIG.IDMOV)
		JOIN FCFO ON (TMOV.CODCFO=FCFO.CODCFO)
		


GO


