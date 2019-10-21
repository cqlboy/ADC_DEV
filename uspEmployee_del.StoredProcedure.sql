
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
********************* History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created


*********************************************************/

create procedure [dbo].[uspEmployee_del]

	@id int

as

delete Employees
where id = @id

GO


