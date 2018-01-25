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
-- Description: <Storage Procedure to update Employees>
-- =============================================
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateEmployee]        
(     
	@EmployeeId  INT,   
	@FirstName NVARCHAR(20), 
	@LastName NVARCHAR(20), 
	@Gender NVARCHAR(6),         
    @City NVARCHAR(20),        
    @Department NVARCHAR(20),
	@Phone NVARCHAR(20)       
)        
as        
begin        
   Update Employee         
   set FirstName=@FirstName,  
		LastName=@LastName,
		Gender=@Gender,          
		City=@City,        
		Department=@Department,      
		Phone=@Phone
   where EmployeeId=@EmployeeId      
End   