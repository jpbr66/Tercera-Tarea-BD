USE [TerceraTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_detallesUsuario]    Script Date: 11/11/2022 3:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_pagoFactura]
	@inId INT,
	@inTipoPago VARCHAR(128),
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		DECLARE @aleatorio INT;
		SET @outResult=0;
		SET @aleatorio = FLOOR(RAND()*(99999-10000)+10000)

		WHILE EXISTS(
			SELECT 1 FROM dbo.ComprobantePago C
			WHERE C.NumReferencia = @aleatorio
			)
		BEGIN
			SET @aleatorio = FLOOR(RAND()*(99999-10000)+10000)
		END
		
		BEGIN TRANSACTION tPagoFactura
			INSERT dbo.ComprobantePago(ID,Fecha,NumReferencia,IdTipoMedioPago)
			SELECT @inId,
				GETDATE(),
				@aleatorio,
				T.ID
			FROM dbo.TipoMedioPago T
			WHERE @inTipoPago = T.Nombre

			UPDATE Factura
			SET IdEstado = 2
			WHERE ID = @inId
		COMMIT TRANSACTION tPagoFactura	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tPagoFactura;
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

