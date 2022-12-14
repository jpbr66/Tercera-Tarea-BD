USE [TerceraTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_detallesPropiedad]    Script Date: 11/11/2022 1:38:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[proc_factPendientes]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tFactPendientes
			SELECT p.NumFinca
				, f.Fecha
				, f.FechaVencimiento
				, f.TotalOriginal
				, f.TotalPagar
				, e.Estado
				, f.ID
			FROM dbo.Factura f
				, dbo.Propiedad p
				, dbo.EstadoFactura e
			WHERE f.IdPropiedad = @inId
				AND f.IdEstado = 1
				AND p.ID = @inId
				AND e.ID = f.IdEstado
		COMMIT TRANSACTION tFactPendientes	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tFactPendientes;
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

