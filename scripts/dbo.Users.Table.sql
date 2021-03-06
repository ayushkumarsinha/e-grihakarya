/****** Object:  Table [dbo].[Users]    Script Date: 8/15/2019 3:23:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NULL,
	[LastName] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Username] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
	[Role] [nvarchar](250) NULL,
	[Token] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Username], [Password], [Role], [Token]) VALUES (1, N'Admin', N'Admin', N'admin@email.com', NULL, N'admin', N'Admin', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Username], [Password], [Role], [Token]) VALUES (2, N'Teacher', N'Teacher', N'teacher@email.com', NULL, N'teacher', N'Teacher', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Username], [Password], [Role], [Token]) VALUES (3, N'Student', N'Student', N'student@email.com', NULL, N'student', N'Student', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Username], [Password], [Role], [Token]) VALUES (4, N'Parent', N'Parent', N'parent@email.com', NULL, N'parent', N'Parent', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
