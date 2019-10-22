
/****** Object:  Table [dbo].[Employee]    Script Date: 10/18/2019 4:36:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
********************* History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Added comments section.
20191021 bcolson	Made this change, use XCOPY from 
			source to local prod folders
20191021 bcolson	change to verify git trigger results
20191021 bcolson	timestamp: 5:38PM


*********************************************************/

CREATE TABLE [dbo].[Employee](
	[id] [int] NOT NULL,
	FName varchar(20)
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


