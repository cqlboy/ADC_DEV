if object_id('dbo.vwEmployees') is not null drop view dbo.vwEmployees
GO
create view [dbo].[vwEmployees]
/********************** History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created
20191024 JamesS		Little change.
20191024 JamesS		Little more change.
*********************************************************/
as
select *
from Employee
where id >= 0
GO


