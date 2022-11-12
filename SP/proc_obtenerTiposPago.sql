USE [TerceraTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_obtenerTiposDocId]    Script Date: 11/11/2022 3:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_obtenerTiposPago]
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT t.Nombre
	FROM dbo.TipoMedioPago t
	ORDER BY Nombre
	SET NOCOUNT OFF;
END;

