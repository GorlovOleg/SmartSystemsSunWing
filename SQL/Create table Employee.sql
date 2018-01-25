/****** Object:  Table [dbo].[Employee]    Script Date: 2018-01-25 6:03:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](6) NOT NULL,
	[City] [nvarchar](20) NULL,
	[Department] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NULL
) ON [PRIMARY]
GO

