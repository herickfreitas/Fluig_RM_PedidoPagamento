--USE [Corporerm]
--GO

/****** Object:  UserDefinedFunction [dbo].[_Fluig_ITENS_REPOSICAO]    Script Date: 31/01/2022 16:37:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




/* funcao retorna o autorizador da Gesta da CNC, conforme o centro de custo informado. */

CREATE FUNCTION [dbo].[_Fluig_ITENS_PP]  

( @IDMOV AS numeric(10)) 
 
RETURNS @result TABLE (CODIGOPRD varchar(30), NOMEFANTASIA varchar(120), TIPO varchar(1))
AS

    BEGIN  
		
		insert into @result 
	
		SELECT TPRD.CODIGOPRD, TPRD.NOMEFANTASIA, TPRD.TIPO FROM TITMMOV JOIN TPRD ON (TITMMOV.IDPRD=TPRD.IDPRD) WHERE IDMOV=@IDMOV

		
    	
		return;	

    END

GO


