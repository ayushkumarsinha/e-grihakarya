/****** Object:  Table [dbo].[UserAssignments]    Script Date: 8/15/2019 3:23:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAssignments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[AssignmentID] [int] NOT NULL,
	[Assignment] [nvarchar](max) NULL,
	[IsSubmitted] [bit] NULL,
	[SubmittedOn] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserAssignments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserAssignments] ON 

INSERT [dbo].[UserAssignments] ([ID], [UserID], [AssignmentID], [Assignment], [IsSubmitted], [SubmittedOn]) VALUES (1, 3, 1, NULL, 0, NULL)
INSERT [dbo].[UserAssignments] ([ID], [UserID], [AssignmentID], [Assignment], [IsSubmitted], [SubmittedOn]) VALUES (2, 4, 1, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[UserAssignments] OFF
ALTER TABLE [dbo].[UserAssignments] ADD  CONSTRAINT [DF_UserAssignments_IsSubmitted]  DEFAULT ((0)) FOR [IsSubmitted]
GO
