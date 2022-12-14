USE [TerceraTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_comprobantePago]    Script Date: 11/11/2022 18:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[proc_comprobantePago]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tComprobantePago
			SELECT c.Fecha, p.Nombre, c.NumReferencia, f.TotalPagar
			FROM dbo.ComprobantePago c
			INNER JOIN dbo.TipoMedioPago p
			ON p.ID = c.IdTipoMedioPago
			INNER JOIN dbo.Factura f
			ON f.ID = c.ID
			WHERE c.ID = @inId
		COMMIT TRANSACTION tComprobantePago	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tComprobantePago;
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

