USE [SegundaTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_insertarUsuario]    Script Date: 19/10/2022 00:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insertarUsuario]
	@inUserName VARCHAR(128),	 
	@inPassword VARCHAR(128),
	@inTipoUsuario VARCHAR(128),
	@inValorDocId BIGINT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		DECLARE @idPersona INT;
		SELECT @idPersona = P.ID
		FROM dbo.Persona P
		WHERE P.ValorDocId = @inValorDocId;
		IF EXISTS (SELECT 1 FROM dbo.Persona P WHERE P.ID = @idPersona)
			IF NOT EXISTS (SELECT 1 FROM dbo.Usuario U WHERE U.IdPersona = @idPersona)
				IF NOT EXISTS (SELECT 1 FROM dbo.Usuario U WHERE U.UserName = @inUserName)
					BEGIN
						BEGIN TRANSACTION tInsertarUsuario
							INSERT INTO [dbo].[Usuario] (
							UserName
							, [Password]
							, TipoUsuario
							, IdPersona
							)
							VALUES (
							@inUserName
							, @inPassword
							, @inTipoUsuario
							, @idPersona
							)
						COMMIT TRANSACTION tInsertarUsuario
					END
				ELSE
					SET @outResult=50010;
			ELSE
				SET @outResult=50009;
		ELSE
			SET @outResult=50008;
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tInsertarUsuario;
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

