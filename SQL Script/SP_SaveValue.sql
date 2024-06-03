USE Test
GO
CREATE OR ALTER PROCEDURE SaveValue
@Numero VARCHAR(100),
@NumeroEnLetra Varchar(200)
AS
BEGIN

	IF(@Numero = '')
	BEGIN
		SELECT 'Ingrese un Numero';
		RETURN 
	END
	IF(@NumeroEnLetra = '')
	BEGIN
		SELECT 'Conversion en letra vacio';
		RETURN 
	END
	
	INSERT INTO Test.dbo.Conversion (Numero,NumeroEnLetra)
	VALUES(@Numero,@NumeroEnLetra)

END