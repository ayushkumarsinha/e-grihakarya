/****** Object:  StoredProcedure [dbo].[AddComment]    Script Date: 8/15/2019 3:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddComment] 
	@UserId INT,
	@AssignmentID INT,
	@Comment NVARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Comment]
           ([UserID]
           ,[AssignmentID]
           ,[Comment])
     VALUES
           (@UserId
           ,@AssignmentID
           ,@Comment)
END
GO
