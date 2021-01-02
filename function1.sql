SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION bookdetail(@bisbnno varchar(50))
	RETURNS @book TABLE
		(author varchar(80),year date,price varchar(50))
AS
BEGIN
	INSERT INTO @book
	SELECT author, year, price
	FROM  book
	WHERE bisbnno=@bisbnno
	RETURN	
END

select * from book

select * from bookdetail(456798)