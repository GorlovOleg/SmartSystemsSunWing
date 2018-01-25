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
-- Description: <Storage Procedure to add new customers>
-- =============================================
SET QUOTED_IDENTIFIER ON
GOSET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AddCustomer]         
(        
	@FirstName NVARCHAR(20), 
	@LastName NVARCHAR(20), 
	@Gender NVARCHAR(6), 
	@Phone NVARCHAR(20),         
    @Email NVARCHAR(20),        
    @Birthday DATETIME2(7)
)        
as         
Begin         
    Insert into Customer ( FirstName, LastName, Gender, Phone, Email, Birthday)         
    Values               (@FirstName, @LastName, @Gender, @Phone, @Email, @Birthday)     
End 