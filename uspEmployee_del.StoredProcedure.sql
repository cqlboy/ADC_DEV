
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[uspEmployee_del]

	@id int
/*
********************* History ***************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created
			test change from dev to qa.


*********************************************************/

as

delete Employees
where id = @id

GO


