/****** Object:  StoredProcedure [dbo].[GetAssignmentByUserAndAssID]    Script Date: 8/15/2019 3:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssignmentByUserAndAssID]
	@UserID INT,
	@AssignmentID INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT UA.[ID]
		,[UserID]
		,[AssignmentID]
		,[Assignment]
		,[IsSubmitted]
		,[SubmittedOn]
		,CONCAT( U.FirstName, ' ' ,U.LastName) AS Name
	FROM [dbo].[UserAssignments] UA
	INNER JOIN Users U
	ON UA.UserID = U.Id
	WHERE AssignmentID = @AssignmentID AND UserID = @UserID
END
GO
