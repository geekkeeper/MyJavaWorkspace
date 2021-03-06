USE [HiODSDB]
GO
/****** Object:  Table [dbo].[SM_UserSession]    Script Date: 2019/6/20 15:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_UserSession](
	[ID] [nvarchar](50) NOT NULL,
	[strAccount] [nvarchar](50) NOT NULL,
	[strSessionID] [nvarchar](50) NULL,
	[strLastUpdateTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SM_UserSession] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
