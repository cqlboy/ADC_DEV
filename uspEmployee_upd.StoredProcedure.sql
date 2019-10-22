

/****** Object:  StoredProcedure [dbo].[uspEmployee_ins]    Script Date: 10/18/2019 4:38:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[uspEmployee_upd]

	@id int
/*
********************* History **************************
Date  	 Change By		Desc
-------- -------------	--------------------------------
20191021 BColson		Created.
20191022 BColson		Add comments + WHERE


*********************************************************/
as
-- simple update statement
update Employee
set fname = 'test'
WHERE id = 1
GO


