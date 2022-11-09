USE [SegundaTarea]
GO
/****** Object:  StoredProcedure [dbo].[proc_eliminarUsuario]    Script Date: 19/10/2022 00:15:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_eliminarUsuario]
	@inId INT,
	@outResult INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		SET @outResult=0;
		
		BEGIN TRANSACTION tEliminarUsuario
			DELETE U FROM dbo.Usuario U
			WHERE U.ID = @inId
		COMMIT TRANSACTION tEliminarUsuario	
	END TRY

	BEGIN CATCH		
		IF @@TRANCOUNT> 0
		BEGIN
			ROLLBACK TRANSACTION tEliminarUsuario;
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

