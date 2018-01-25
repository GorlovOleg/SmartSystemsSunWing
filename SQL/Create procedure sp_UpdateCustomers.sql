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
-- Description: <Storage Procedure to update customers>
-- =============================================
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateCustomer]        
(     
	@CustomerId  INT,   
	@FirstName NVARCHAR(20), 
	@LastName NVARCHAR(20), 
	@Gender NVARCHAR(6), 
	@Phone NVARCHAR(20),          
    @Email NVARCHAR(20),        
	@Birthday DATETIME2(7)       
)        
as        
begin        
   Update Customer         
   set FirstName=@FirstName,  
		LastName=@LastName,
		Gender=@Gender,          
		Phone=@Phone,     
		Email=@Email,      
		Birthday=@Birthday
   where CustomerId=@CustomerId      
End   