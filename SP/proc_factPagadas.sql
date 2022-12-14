USE [TerceraTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_factPagadas]    Script Date: 11/11/2022 3:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[proc_factPagadas]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tDetallesPropiedad
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
				AND (2 = f.IdEstado
					OR 3 = f.IdEstado)
				AND p.ID = @inId
				AND e.ID = f.IdEstado
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

