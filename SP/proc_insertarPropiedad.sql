USE [SegundaTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_insertarPropiedad]    Script Date: 19/10/2022 00:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarPropiedad]
	@inNumFinca INT,	 
	@inArea FLOAT,
	@inValor VARCHAR(128),
	@inTipoTerreno VARCHAR(128),
	@inTipoZona VARCHAR(128),
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
		SET @outResult=0;
		DECLARE @idTipoTerreno INT, @idTipoZona INT, @fecha DATE;
		SET @fecha = GETDATE()
		SELECT @idTipoTerreno = TT.ID, @idTipoZona = TZ.ID
		FROM dbo.TipoTerreno TT
		INNER JOIN dbo.TipoZona TZ
		ON TZ.Nombre = @inTipoZona
		WHERE TT.Nombre = @inTipoTerreno;
		IF NOT EXISTS (SELECT 1 FROM dbo.Propiedad P WHERE P.NumFinca = @inNumFinca)
			BEGIN
				BEGIN TRANSACTION tInsertarPropiedad
					INSERT INTO [dbo].[Propiedad] (
					NumFinca
					, Area
					, ValorFiscal
					, FechaRegistro
					, IdTipoTerreno
					, IdTipoZona
					)
					VALUES (
					@inNumFinca
					, @inArea
					, @inValor
					, @fecha
					, @idTipoTerreno
					, @idTipoZona
					)
				COMMIT TRANSACTION tInsertarPropiedad
			END
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarPropiedad;
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