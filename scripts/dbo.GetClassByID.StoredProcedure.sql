/****** Object:  StoredProcedure [dbo].[GetClassByID]    Script Date: 8/15/2019 3:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetClassByID]
	@ClassID INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [Id]
		,[ClassName]
		,[Section]
		,[Subject]
		,[Room]
		,[AddedOn]
		,[AddedBy]
		,[SubjectCode]
		FROM [dbo].[Classes]
		WHERE Id = @ClassID
END
GO
