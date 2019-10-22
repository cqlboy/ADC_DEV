

/****** Object:  StoredProcedure [dbo].[uspEmployee_ins]    Script Date: 10/18/2019 4:38:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[uspEmployee_ins]

	@id int
/*
********************* History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created
			New


*********************************************************/
as

insert Employee
select @id
GO


