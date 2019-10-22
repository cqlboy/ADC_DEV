
if object_id('uspEmployee_upd') is not null
	drop procedure uspEmployee_upd
GO

create procedure [dbo].[uspEmployee_upd]

	@id int
/*
********************* History **************************
Date  	 Change By		Desc
-------- -------------	--------------------------------
20191021 BColson		Created.
20191022 BColson		Add comments + WHERE.


*********************************************************/
as
-- simple update statement
update Employee
set fname = 'test'
WHERE id = 1
GO


