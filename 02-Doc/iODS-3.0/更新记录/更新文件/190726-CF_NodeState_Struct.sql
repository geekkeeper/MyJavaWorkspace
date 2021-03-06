USE [HiODSDB]
GO
/****** Object:  Table [dbo].[CF_NodeState]    Script Date: 2019/7/26 11:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NodeState](
	[ID] [nvarchar](50) NOT NULL,
	[nCPULoad] [int] NOT NULL,
	[fTemperature] [float] NOT NULL,
	[nMemoryLoad] [int] NOT NULL,
	[nState] [int] NOT NULL,
	[nNodeType] [int] NOT NULL,
	[nNodePCID] [int] NULL,
	[strStateTime] [datetime] NOT NULL,
	[strSerialNum] [nvarchar](20) NULL,
	[fNetworkALoad] [float] NULL,
	[fNetworkBLoad] [float] NULL,
 CONSTRAINT [PK_NODESTATEID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPU负荷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'nCPULoad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'fTemperature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内存负荷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'nMemoryLoad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 -1:初始化  0：不正常  1:正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'nState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点类型（0普通节点，1网闸安全侧，2网闸开放侧，3云卡）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'nNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PC号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'nNodePCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'strStateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网闸序列号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState', @level2type=N'COLUMN',@level2name=N'strSerialNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组态节点状态信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CF_NodeState'
GO
