SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION FindName(@id varchar(50))
	RETURNS varchar(50)
AS
BEGIN
	DECLARE @name varchar(50)
	SELECT @name = name
	FROM member
	WHERE idcode = @id
	RETURN @name
END


SELECT * FROM member


SELECT dbo.FindName(10010)