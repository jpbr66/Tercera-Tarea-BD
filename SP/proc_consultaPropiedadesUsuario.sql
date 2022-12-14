USE [SegundaTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_consultaPropiedadesUsuario]    Script Date: 19/10/2022 00:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[proc_consultaPropiedadesUsuario](
	@inNombre VARCHAR(32),
	@outResult INT OUTPUT
	) AS
BEGIN
	SELECT P.ID, P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
	FROM dbo.Propiedad P
	INNER JOIN dbo.TipoZona TZ
	ON TZ.ID = P.IdTipoZona
	INNER JOIN dbo.TipoTerreno TT
	ON TT.ID = P.IdTipoTerreno
	INNER JOIN dbo.Persona Pe
	ON Pe.Nombre = @inNombre
	INNER JOIN dbo.PXP PP
	ON P.ID = PP.IdPropiedad AND Pe.ID = PP.IdPersona


END;

--EXEC proc_consultaPropiedadesPropietario '', 2222222, 0

