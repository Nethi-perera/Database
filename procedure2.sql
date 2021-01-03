SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure findbook @avail bit, @author varchar (80)
as
select name, author, price from book where
[availabilty] = @avail and
[author] = @author

exec findbook @avail=1 ,@author = 'Jojo Moyes'


select * from book