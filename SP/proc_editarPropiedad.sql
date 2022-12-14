USE [SegundaTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_editarPropiedad]    Script Date: 19/10/2022 00:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_editarPropiedad]
	@inId INT,
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
		DECLARE @idTipoTerreno INT, @idTipoZona INT;
		SELECT @idTipoTerreno = TT.ID, @idTipoZona = TZ.ID
		FROM dbo.TipoTerreno TT
		INNER JOIN dbo.TipoZona TZ
		ON TZ.Nombre = @inTipoZona
		WHERE TT.Nombre = @inTipoTerreno;
		BEGIN TRANSACTION tEditarPropiedad
			UPDATE [dbo].[Propiedad]
			SET NumFinca = @inNumFinca,
			Area =  @inArea,
			ValorFiscal = @inValor,
			IdTipoTerreno = @idTipoTerreno,
			IdTipoZona = @idTipoZona
			WHERE ID = @inId
		COMMIT TRANSACTION tEditarPropiedad
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEditarPropiedad;
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

