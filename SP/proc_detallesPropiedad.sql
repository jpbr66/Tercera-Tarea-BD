USE [SegundaTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_detallesPropiedad]    Script Date: 19/10/2022 00:09:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_detallesPropiedad]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tDetallesPropiedad
			SELECT P.NumFinca, P.ValorFiscal, P.Area, P.FechaRegistro, TZ.Nombre, TT.Nombre
			FROM dbo.Propiedad P
			INNER JOIN dbo.TipoZona TZ
			ON TZ.ID = P.IdTipoZona
			INNER JOIN dbo.TipoTerreno TT
			ON TT.ID = P.IdTipoTerreno
			WHERE P.ID = @inId
		COMMIT TRANSACTION tDetallesPropiedad	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tDetallesPropiedad;
		END;
		INSERT INTO dbo.DBErrors(
		 [UserName]
		, [ErrorNumber]
		, [ErrorState]
		, [ErrorSeverity]
		, [ErrorLine]
		, [ErrorProcedure]
		, [ErrorMessage]
		, [ErrorDateTime])
		VALUES (
			SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			GETDATE()
		);
		Set @outResult=50007;
	END CATCH
	SET NOCOUNT OFF;
END;

