SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Trigger notallowedaddingpublisher
on publisher
Instead of Insert
As
Begin
	raiserror('Cannot insert publisher',2,3)
End

insert into publisher(publisherid, name,address)
values(12345,'Abcd','wxyz')
go

select * from publisher