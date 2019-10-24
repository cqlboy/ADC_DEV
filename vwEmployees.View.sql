

/****** Object:  View [dbo].[vwEmployees]    Script Date: 10/18/2019 4:38:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwEmployees]
/********************** History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created
20191024 JamesS		Little change.

*********************************************************/
as
select *
from Employee
where id > 0
GO


