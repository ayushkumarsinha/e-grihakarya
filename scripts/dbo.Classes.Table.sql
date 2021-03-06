/****** Object:  Table [dbo].[Classes]    Script Date: 8/15/2019 3:23:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](100) NOT NULL,
	[Section] [nvarchar](100) NULL,
	[Subject] [nvarchar](100) NULL,
	[Room] [nvarchar](100) NULL,
	[AddedOn] [datetime2](7) NOT NULL,
	[AddedBy] [int] NULL,
	[SubjectCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([Id], [ClassName], [Section], [Subject], [Room], [AddedOn], [AddedBy], [SubjectCode]) VALUES (1, N'Final Year Project', N'A', N'FYP', N'Sagarmatha', CAST(N'2019-05-02T06:50:02.9666667' AS DateTime2), 2, N'0x0000AA4100709F95')
SET IDENTITY_INSERT [dbo].[Classes] OFF
