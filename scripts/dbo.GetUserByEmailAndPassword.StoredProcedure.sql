/****** Object:  StoredProcedure [dbo].[GetUserByEmailAndPassword]    Script Date: 8/15/2019 3:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetUserByEmailAndPassword](
	@Email NVARCHAR(MAX),
	@Password NVARCHAR(MAX)
)
AS
BEGIN
	SELECT * FROM Users WHERE Email = @Email AND Password = @Password
END
GO
