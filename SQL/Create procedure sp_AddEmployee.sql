-- =======================================================
-- Create Stored Procedure Template for Azure SQL Database
-- =======================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Oleg Gorlov>
-- Create Date: <2018-01-25 5:02:54 AM>
-- Description: <Storage Procedure to Add Employees>
-- =============================================
SET QUOTED_IDENTIFIER ON
GOSET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AddEmployee]         
(        
	@FirstName VARCHAR(20), 
	@LastName VARCHAR(20), 
	@Gender VARCHAR(6),         
    @City VARCHAR(20),        
    @Department VARCHAR(20),
	@Phone VARCHAR(20)        
)        
as         
Begin         
    Insert into Employee ( FirstName, LastName, Gender, City, Department, Phone)         
    Values (@FirstName, @LastName, @Gender, @City, @Department, @Phone)     
End 