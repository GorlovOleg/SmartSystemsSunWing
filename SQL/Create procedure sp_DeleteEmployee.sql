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
-- Description: <Storage Procedure to delete Employees by Id>
-- =============================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_DeleteEmployee]       
(        
   @EmpId int        
)        
as         
begin        
   Delete from Employee where EmployeeId=@EmpId        
End   