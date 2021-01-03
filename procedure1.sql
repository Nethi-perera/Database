SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE findavailabilitycount @avail bit
AS
BEGIN
	DECLARE @availcount int
	SELECT @availcount = COUNT(*)
	FROM book
	WHERE availabilty = @avail
	RETURN	@availcount
END

DECLARE @countavail varchar(50)
EXEC @countavail = findavailabilitycount 1
SELECT @countavail


SELECT * FROM book