USE [MES30]
GO
/****** Object:  Table [dbo].[SM_Attachment]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_Attachment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[EntityName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Path] [nvarchar](1000) NULL,
	[Size] [nvarchar](50) NULL,
	[UploadTime] [datetime] NULL,
	[DelFlag] [char](1) NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
	[ModuleId] [nvarchar](50) NULL,
 CONSTRAINT [PK_SM_ATTACHMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_Biz]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_Biz](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CodeLength] [int] NULL,
	[Prefix] [nvarchar](20) NULL,
	[Suffix] [nvarchar](10) NULL,
	[CodeOrder] [nvarchar](10) NULL,
	[ModuleCode] [nvarchar](50) NULL,
	[ValueSource] [nvarchar](10) NULL,
	[ISYMD] [char](1) NULL,
	[MaxCode] [nvarchar](10) NULL,
	[MinCode] [nvarchar](10) NULL,
	[SerialEntity] [nvarchar](10) NULL,
	[SerialTimeGran] [nvarchar](10) NULL,
	[PolishChar] [nvarchar](1) NULL,
	[PolishRule] [nvarchar](10) NULL,
	[Name] [nvarchar](20) NULL,
	[Radix] [nvarchar](10) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[CorpCode] [nvarchar](50) NOT NULL,
	[ModifyCode] [nvarchar](50) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BD_BIZ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_CodeVou]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_CodeVou](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[FiscalYear] [nvarchar](4) NULL,
	[CurrNo] [int] NULL,
	[LastUpdateDay] [nvarchar](2) NULL,
	[FiscalMonth] [nvarchar](2) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[CorpCode] [nvarchar](50) NOT NULL,
	[ModifyCode] [nvarchar](50) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BD_CODEVOU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_Department]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Pcode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Charge] [nvarchar](50) NULL,
	[OrderNo] [int] NULL,
	[IsCompany] [char](1) NULL,
	[IsProductionDept] [char](1) NULL,
	[DelFlag] [char](1) NOT NULL,
 CONSTRAINT [PK_SM_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_HomePage]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_HomePage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Area] [int] NULL,
	[ResourceCode] [nvarchar](50) NULL,
	[ResourceOrder] [int] NULL,
	[UserCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
 CONSTRAINT [PK_SM_HomePage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_ListFieldConfig]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_ListFieldConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SystemResourceDtlCode] [nvarchar](50) NOT NULL,
	[ResourceUrl] [nvarchar](200) NULL,
	[ResorceFile] [nvarchar](200) NULL,
	[FieldID] [nvarchar](100) NOT NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[IsHide] [char](1) NULL,
	[IsSysMenu] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_SM_LISTFIELDCONFIG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_MessageInfo]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_MessageInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[EndTime] [datetime] NULL,
	[Content] [nvarchar](4000) NULL,
	[Sender] [nvarchar](50) NULL,
	[SendTime] [datetime] NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[CorpCode] [nvarchar](50) NOT NULL,
	[ModifyCode] [nvarchar](50) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SM_MESSAGEINFO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_MessageInfoDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_MessageInfoDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
	[IsRead] [char](1) NULL,
	[DelFlag] [char](1) NOT NULL,
 CONSTRAINT [PK_SM_MESSAGEINFODTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_PageButtonConfig]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_PageButtonConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SystemResourceDtlCode] [nvarchar](50) NOT NULL,
	[ResourceUrl] [nvarchar](200) NULL,
	[ButtonID] [nvarchar](100) NOT NULL,
	[ButtonName] [nvarchar](100) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[IsSysMenu] [char](1) NULL,
 CONSTRAINT [PK_SM_PAGEBUTTONCONFIG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_Person]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Sex] [char](1) NULL,
	[WorkNum] [nvarchar](50) NULL,
	[Account] [nvarchar](50) NULL,
	[Password] [nvarchar](200) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[Duty] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
	[Superior] [nvarchar](50) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[OrderNo] [int] NULL,
	[PersonStatus] [char](1) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[RandCode] [int] NULL,
 CONSTRAINT [PK_SM_PERSON] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_PersonDataPower]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_PersonDataPower](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NOT NULL,
	[SystemResourceDtlCode] [nvarchar](50) NULL,
	[DataPower] [char](1) NULL,
	[CustomPower] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SM_PERSONDATAPOWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_PersonDeptPower]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_PersonDeptPower](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SM_PERSONDEPTPOWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_PersonRole_Rel]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_PersonRole_Rel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
	[RoleCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SM_PERSONROLE_REL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_PersonSysPower]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_PersonSysPower](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NOT NULL,
	[SystemResourceDtlCode] [nvarchar](50) NOT NULL,
	[PageButtonConfigID] [int] NOT NULL,
	[IsEnable] [char](1) NULL,
 CONSTRAINT [PK_SM_PERSONSYSPOWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_QueryFieldConfig]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_QueryFieldConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SystemResourceDtlCode] [nvarchar](50) NOT NULL,
	[ResourceUrl] [nvarchar](200) NULL,
	[ResorceFile] [nvarchar](200) NULL,
	[FieldID] [nvarchar](100) NOT NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[FieldType] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsHide] [char](1) NULL,
	[IsSysMenu] [char](1) NULL,
 CONSTRAINT [PK_SM_QUERYFIELDCONFIG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_ReceiverGroup]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_ReceiverGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[CorpCode] [nvarchar](50) NOT NULL,
	[ModifyCode] [nvarchar](50) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SM_RECEIVERGROUP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_ReceiverGroupDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_ReceiverGroupDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PCode] [nvarchar](50) NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SM_RECEIVERGROUPDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_Role]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Describe] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NOT NULL,
 CONSTRAINT [PK_SM_ROLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_RoleDataPower]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_RoleDataPower](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NULL,
	[SystemResourceDtlCode] [nvarchar](50) NULL,
	[DataPower] [char](1) NULL,
	[CustomPower] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SM_ROLEDATAPOWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_RoleDeptPower]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_RoleDeptPower](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SM_ROLEDEPTPOWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_RoleSysPower]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_RoleSysPower](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[SystemResourceDtlCode] [nvarchar](50) NULL,
	[PageButtonConfigID] [int] NOT NULL,
	[IsEnable] [char](1) NULL,
 CONSTRAINT [PK_SM_ROLESYSPOWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_SystemResource]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_SystemResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[EnTitle] [nvarchar](50) NULL,
	[OrderNo] [int] NULL,
	[IsHide] [char](1) NULL,
	[IsSysMenu] [char](1) NULL,
	[Platform] [char](1) NULL,
	[DelFlag] [char](1) NOT NULL,
 CONSTRAINT [PK_SM_SYSTEMRESOURCE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_SystemResourceDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_SystemResourceDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[SystemResourceCode] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[EnTitle] [nvarchar](50) NULL,
	[ResourceType] [char](1) NULL,
	[ResourceUrl] [nvarchar](1000) NULL,
	[ResourceUrlApp] [nvarchar](100) NULL,
	[Parameter] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[IsHide] [char](1) NULL,
	[IsSysMenu] [char](1) NULL,
	[Platform] [char](1) NULL,
	[ConfCodeVou] [char](1) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
 CONSTRAINT [PK_SM_SYSTEMRESOURCEDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_SystemResourceRmisDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_SystemResourceRmisDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[SystemResourceCode] [nvarchar](50) NOT NULL,
	[DeployID] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[EnTitle] [nvarchar](50) NULL,
	[ResourceType] [char](1) NULL,
	[Parameter] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[IsHide] [char](1) NULL,
	[IsSysMenu] [char](1) NULL,
	[Platform] [char](1) NULL,
	[ConfCodeVou] [char](1) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[ExternalNetwork] [nvarchar](200) NULL,
 CONSTRAINT [PK_SM_SYSTEMRESOURCERMISDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SM_TrendGroup]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SM_TrendGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](100) NULL,
	[GroupPoints] [nvarchar](500) NULL,
	[ChartFlag] [nvarchar](100) NULL,
	[DelFlag] [char](1) NULL,
	[UserCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SM_TrendGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_ack]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_ack](
	[AckId] [bigint] NOT NULL,
	[AckTime] [datetime] NOT NULL,
	[AckStyle] [int] NOT NULL,
	[AckText] [nvarchar](127) NULL,
	[AckUserId] [int] NULL,
 CONSTRAINT [PK_t_alarm_ack] PRIMARY KEY CLUSTERED 
(
	[AckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_config]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagId] [int] NOT NULL,
	[AlarmType] [int] NOT NULL,
	[AlarmColor] [int] NOT NULL,
	[AlarmSound] [int] NOT NULL,
	[AlarmStyle] [int] NOT NULL,
	[cfg_ver] [bigint] NOT NULL,
 CONSTRAINT [PK_t_alarm_config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_config_deleted]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_config_deleted](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[config_id] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[del_time] [datetime] NOT NULL,
	[cfg_ver] [bigint] NOT NULL,
 CONSTRAINT [PK_t_alarm_config_deleted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_data]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_data](
	[id] [bigint] NOT NULL,
	[tag_id] [int] NOT NULL,
	[tag_name] [nvarchar](127) NOT NULL,
	[tag_type] [int] NOT NULL,
	[alarm_type] [int] NOT NULL,
	[starttime] [datetime] NOT NULL,
	[extremum] [float] NULL,
	[extremum_time] [datetime] NULL,
	[endtime] [datetime] NULL,
 CONSTRAINT [PK_T_ALARM_DATA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_deleted]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_deleted](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[alarm_id] [int] NOT NULL,
 CONSTRAINT [PK_t_alarm_deleted] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_level]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_level](
	[TagId] [int] NOT NULL,
	[AlarmLevel] [int] NULL,
	[IsRun] [int] NULL,
 CONSTRAINT [PK_t_alarm_level] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_sound]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_sound](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [varchar](255) NOT NULL,
	[alias] [varchar](127) NOT NULL,
	[ext] [varchar](31) NOT NULL,
	[data] [image] NOT NULL,
	[cfg_ver] [bigint] NOT NULL,
 CONSTRAINT [PK_t_alarm_sound] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_tag]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_tag](
	[id] [int] NOT NULL,
	[tag_name] [nvarchar](127) NOT NULL,
	[tag_type] [int] NOT NULL,
	[hihi_alarm] [float] NOT NULL,
	[hi_alarm] [float] NOT NULL,
	[lo_alarm] [float] NOT NULL,
	[lolo_alarm] [float] NOT NULL,
	[rate_hihi] [float] NOT NULL,
	[rate_hi] [float] NOT NULL,
	[rate_lo] [float] NOT NULL,
	[rate_lolo] [float] NOT NULL,
	[rate] [int] NOT NULL,
	[dev_hihi] [float] NOT NULL,
	[dev_hi] [float] NOT NULL,
	[dev_lo] [float] NOT NULL,
	[dev_lolo] [float] NOT NULL,
	[dev_sp] [float] NOT NULL,
	[unit1] [nvarchar](32) NULL,
	[unit2] [nvarchar](32) NULL,
	[unit3] [nvarchar](32) NULL,
	[alarm_mode] [int] NOT NULL,
	[description] [nvarchar](255) NULL,
	[cfg_ver] [bigint] NOT NULL,
	[relateGraph] [nvarchar](255) NULL,
	[bView] [bit] NOT NULL,
 CONSTRAINT [PK_t_alarm_tag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_tag_deleted]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_tag_deleted](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[alarm_id] [int] NOT NULL,
	[del_time] [datetime] NOT NULL,
	[cfg_ver] [bigint] NOT NULL,
 CONSTRAINT [PK_t_alarm_confg_deleted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_alarm_user_ver]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_alarm_user_ver](
	[groupid] [int] NOT NULL,
	[cfg_ver] [bigint] NOT NULL,
 CONSTRAINT [PK_t_alarm_user_ver] PRIMARY KEY CLUSTERED 
(
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_ArrangePeriod]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_ArrangePeriod](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkDate] [date] NULL,
	[ShiftCode] [nvarchar](50) NULL,
	[TeamCode] [nvarchar](50) NULL,
	[Dept] [nvarchar](50) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_BD_ArrangePeriod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_ArrangeResult]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_ArrangeResult](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkDate] [date] NOT NULL,
	[ShiftCode] [nvarchar](50) NOT NULL,
	[TeamCode] [nvarchar](50) NOT NULL,
	[Dept] [nvarchar](50) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_ArrangeResult] PRIMARY KEY CLUSTERED 
(
	[WorkDate] ASC,
	[ShiftCode] ASC,
	[TeamCode] ASC,
	[Dept] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_ClassGroupMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_ClassGroupMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassGroupCode] [nvarchar](50) NOT NULL,
	[ClassGroupName] [nvarchar](50) NULL,
	[ClassGroupRemark] [nvarchar](50) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_Dict]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_Dict](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DictCode] [nvarchar](50) NOT NULL,
	[DictName] [nvarchar](50) NOT NULL,
	[TypeCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[Inputcode] [nvarchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Deptcode] [nvarchar](50) NULL,
	[Corpcode] [nvarchar](50) NULL,
	[Modifycode] [nvarchar](50) NULL,
	[Modifydate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_Dict] PRIMARY KEY CLUSTERED 
(
	[DictCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_DictDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_DictDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DictDtlCode] [nvarchar](50) NOT NULL,
	[DictDtlName] [nvarchar](50) NOT NULL,
	[DictCode] [nvarchar](50) NOT NULL,
	[SeqNo] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[Inputcode] [nvarchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Deptcode] [nvarchar](50) NULL,
	[Corpcode] [nvarchar](50) NULL,
	[Modifycode] [nvarchar](50) NULL,
	[Modifydate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_DictDtl] PRIMARY KEY CLUSTERED 
(
	[DictCode] ASC,
	[DictDtlCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_Material]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[MatName] [nvarchar](200) NOT NULL,
	[Spec] [nvarchar](200) NULL,
	[Model] [nvarchar](200) NULL,
	[FirstUnitCode] [nvarchar](50) NULL,
	[SecondUnitCode] [nvarchar](50) NULL,
	[PYCode] [nvarchar](50) NULL,
	[UseFlag] [nchar](1) NULL,
	[MatType] [nvarchar](50) NULL,
	[MaxInventory] [decimal](22, 6) NULL,
	[MinInventory] [decimal](22, 6) NULL,
	[SafeInventory] [decimal](22, 6) NULL,
	[IsSetBatch] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [nchar](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_Material] PRIMARY KEY CLUSTERED 
(
	[MatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_MaterialAttr]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_MaterialAttr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttrCode] [nvarchar](50) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[AttrName] [nvarchar](50) NOT NULL,
	[AttrValue] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_MaterialAttr] PRIMARY KEY CLUSTERED 
(
	[AttrCode] ASC,
	[MatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_MaterialRelType]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_MaterialRelType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_MaterialRelType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC,
	[MatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_Member]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_Member](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeamCode] [nvarchar](50) NOT NULL,
	[PersonCode] [nvarchar](50) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
	[Dept] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_t_BD_Member] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC,
	[TeamCode] ASC,
	[Dept] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_Supplier]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCode] [nvarchar](50) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[ContactInfo] [nvarchar](100) NULL,
	[ShortName] [nvarchar](50) NULL,
	[Place] [nvarchar](200) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_SupplierMaterialDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_SupplierMaterialDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCode] [nvarchar](50) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_SupplierMaterialDtl] PRIMARY KEY CLUSTERED 
(
	[SupplierCode] ASC,
	[MatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_Team]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_Team](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeamCode] [nvarchar](50) NOT NULL,
	[TeamName] [nvarchar](50) NULL,
	[Leader] [nvarchar](50) NULL,
	[Dept] [nvarchar](20) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_Team] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC,
	[TeamCode] ASC,
	[Dept] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_Unit]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitCode] [nvarchar](50) NOT NULL,
	[UnitName] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[Inputcode] [nvarchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Deptcode] [nvarchar](50) NULL,
	[Corpcode] [nvarchar](50) NULL,
	[Modifycode] [nvarchar](50) NULL,
	[Modifydate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_UnitConv]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_UnitConv](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[BeforeConvCode] [nvarchar](50) NOT NULL,
	[AfterConvCode] [nvarchar](50) NOT NULL,
	[ScaledValue] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_UnitConv] PRIMARY KEY CLUSTERED 
(
	[MatCode] ASC,
	[BeforeConvCode] ASC,
	[AfterConvCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_UnitDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_UnitDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitDtlCode] [nvarchar](50) NOT NULL,
	[UnitDtlName] [nvarchar](50) NOT NULL,
	[UnitCode] [nvarchar](50) NOT NULL,
	[Symbol] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[Inputcode] [nvarchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Deptcode] [nvarchar](50) NULL,
	[Corpcode] [nvarchar](50) NULL,
	[Modifycode] [nvarchar](50) NULL,
	[Modifydate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_UnitDtl] PRIMARY KEY CLUSTERED 
(
	[UnitDtlCode] ASC,
	[UnitCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_UnitDtlConv]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_UnitDtlConv](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitCode] [nvarchar](50) NOT NULL,
	[BeforeConvCode] [nvarchar](50) NOT NULL,
	[AfterConvCode] [nvarchar](50) NOT NULL,
	[ScaledValue] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_UnitDtlConv] PRIMARY KEY CLUSTERED 
(
	[UnitCode] ASC,
	[BeforeConvCode] ASC,
	[AfterConvCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BD_WorkShift]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BD_WorkShift](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShiftCode] [nvarchar](50) NOT NULL,
	[ShiftName] [nvarchar](50) NOT NULL,
	[BeginTime] [char](5) NULL,
	[EndTime] [char](5) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_t_BD_WorkShift] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_CL_Ledger]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_CL_Ledger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [nvarchar](50) NOT NULL,
	[TagFullName] [nvarchar](80) NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderNo] [int] NULL,
 CONSTRAINT [PK_Ledger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_CL_TagData]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_CL_TagData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TagFullName] [nvarchar](80) NOT NULL,
	[CurrentDate] [smalldatetime] NULL,
	[CurrentTime] [nvarchar](10) NULL,
	[CurrentValue] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_clctr]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_clctr](
	[id] [int] NOT NULL,
	[name] [nvarchar](16) NULL,
	[desc] [nvarchar](32) NULL,
	[version] [int] NULL,
	[idletimeout] [int] NULL,
	[syncrate] [int] NULL,
	[updaterate] [int] NULL,
	[compensation] [int] NULL,
 CONSTRAINT [PK_T_CLCTR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_deply]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_deply](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](64) NOT NULL,
	[desc] [varchar](64) NULL,
	[type] [int] NOT NULL,
	[sort] [int] NOT NULL,
	[path] [varchar](128) NOT NULL,
	[pid] [int] NOT NULL,
	[RTDBServer] [nvarchar](64) NULL,
 CONSTRAINT [PK_T_DEPLY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_device_file]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_device_file](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[device_id] [int] NOT NULL,
	[fname] [varchar](32) NOT NULL,
	[sname] [varchar](64) NOT NULL,
	[type] [int] NOT NULL,
	[info] [varchar](32) NOT NULL,
	[param1] [int] NULL,
	[param2] [int] NULL,
	[param3] [varchar](32) NULL,
	[param4] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_ControlLevelMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_ControlLevelMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[LevelCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_ControlLevelMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_HiddendangerlevelMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_HiddendangerlevelMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_HiddendangerlevelMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_HiddenDangerMsg]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_HiddenDangerMsg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HiddenDangerCode] [nvarchar](50) NULL,
	[RiskPointCode] [nvarchar](50) NULL,
	[RiskPointName] [nvarchar](50) NULL,
	[AllowRegion] [nvarchar](50) NULL,
	[RiskLevel] [nvarchar](50) NULL,
	[HiddenDangerLevel] [nvarchar](50) NULL,
	[HiddenDangerType] [nvarchar](50) NULL,
	[AccidentType] [nvarchar](50) NULL,
	[FindTime] [datetime] NULL,
	[ComTimeLimit] [datetime] NULL,
	[HiddenDangerDesc] [text] NULL,
	[RectifySituation] [text] NULL,
	[LeaderOpinion] [text] NULL,
	[ControlLevel] [nvarchar](50) NULL,
	[ChargeDept] [nvarchar](50) NULL,
	[ChargePerson] [nvarchar](50) NULL,
	[InspectPerson] [nvarchar](50) NULL,
	[Status] [nvarchar](2) NULL,
	[IsHiddenDanger] [nvarchar](2) NULL,
	[Source] [nvarchar](50) NULL,
	[InspectFileID] [nvarchar](500) NULL,
	[HiddenFileID] [nvarchar](500) NULL,
	[Remark] [text] NULL,
	[Inputcode] [nvarchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Deptcode] [nvarchar](50) NULL,
	[Corpcode] [nvarchar](50) NULL,
	[Modifycode] [nvarchar](50) NULL,
	[Modifydate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_T_DM_HIDDENDANGERMSG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_HiddenDangerTypeMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_HiddenDangerTypeMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_HiddenDangerTypeMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_InspectionPeriodMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_InspectionPeriodMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[RiskLevelCode] [nvarchar](50) NULL,
	[HierarchyManangeCode] [nvarchar](50) NULL,
	[CycleCode] [nvarchar](500) NULL,
	[ExpirationDate] [int] NULL,
	[Unit] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_InspectionPeriodMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_JobTypeMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_JobTypeMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
 CONSTRAINT [PK_t_DM_JobTypeMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_MaintenanceOfAccidentTypes]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_MaintenanceOfAccidentTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_MaintenanceOfAccidentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_PatrolInspectSheet]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_PatrolInspectSheet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SheetCode] [nvarchar](50) NULL,
	[RiskPointCode] [nvarchar](50) NULL,
	[RiskPointName] [nvarchar](50) NULL,
	[AllowRegion] [nvarchar](50) NULL,
	[RiskType] [nvarchar](50) NULL,
	[RiskPlace] [nvarchar](50) NULL,
	[OperStep] [text] NULL,
	[RiskDesc] [text] NULL,
	[AccidentType] [nvarchar](50) NULL,
	[RiskLevel] [nvarchar](50) NULL,
	[ControlMeasure] [text] NULL,
	[ControlLevel] [nvarchar](50) NULL,
	[ChargeDept] [nvarchar](50) NULL,
	[ChargePerson] [nvarchar](50) NULL,
	[InspectPerson] [nvarchar](50) NULL,
	[DeliveryTime] [datetime] NULL,
	[InspectTime] [datetime] NULL,
	[ExpireTime] [datetime] NULL,
	[InspectResult] [nvarchar](2) NULL,
	[MissedReason] [text] NULL,
	[Status] [nvarchar](2) NULL,
	[DelFlag] [char](1) NULL,
	[Remark] [text] NULL,
	[AbnormalDesc] [text] NULL,
 CONSTRAINT [PK_T_DM_PATROLINSPECTSHEET] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_RiskAreaMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_RiskAreaMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[LevelCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[Dept] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_RiskAreaMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_RiskAreaMaintenanceDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_RiskAreaMaintenanceDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[LevelDtlCode] [nvarchar](50) NULL,
	[PersonInChargeCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_RiskAreaMaintenanceDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_RiskDistributionMapMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_RiskDistributionMapMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[ModuleAdr] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[AttachName] [nvarchar](100) NULL,
	[UploadFilePath] [nvarchar](200) NULL,
 CONSTRAINT [PK_t_DM_RiskDistributionMapMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_RiskLevelMaintenance]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_RiskLevelMaintenance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[ColorCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_DM_RiskLevelMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DM_RiskPointMsg]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DM_RiskPointMsg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RiskPointCode] [nvarchar](50) NULL,
	[RiskPointName] [nvarchar](50) NULL,
	[AllowRegion] [nvarchar](50) NULL,
	[RiskType] [nvarchar](50) NULL,
	[RiskPlace] [nvarchar](50) NULL,
	[OperStep] [text] NULL,
	[RiskDesc] [text] NULL,
	[AccidentType] [nvarchar](50) NULL,
	[RiskLevel] [nvarchar](50) NULL,
	[ControlMeasure] [text] NULL,
	[ControlLevel] [nvarchar](50) NULL,
	[ChargeDept] [nvarchar](50) NULL,
	[ChargePerson] [nvarchar](50) NULL,
	[InspectPerson] [nvarchar](50) NULL,
	[Remark] [text] NULL,
	[Inputcode] [nvarchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Deptcode] [nvarchar](50) NULL,
	[Corpcode] [nvarchar](50) NULL,
	[Modifycode] [nvarchar](50) NULL,
	[Modifydate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
	[NfcCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_DM_RISKPOINTMSG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_BalancedRecord]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_BalancedRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[MeasureCode] [nvarchar](50) NOT NULL,
	[State] [char](1) NULL,
	[BalanceValue] [decimal](22, 6) NULL,
	[BalanceTime] [datetime] NULL,
	[CumulantQty] [decimal](22, 6) NULL,
	[CorrectValue] [decimal](22, 6) NULL,
	[ValidFlag] [nchar](1) NULL,
	[NetVersion] [int] NOT NULL,
	[NetCode] [nvarchar](50) NOT NULL,
	[IsAbnormal] [char](1) NULL,
	[Remark] [nvarchar](50) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EE_BalancedRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_MeasureModel]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_MeasureModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MeasureCode] [nvarchar](50) NOT NULL,
	[MeasureName] [nvarchar](50) NOT NULL,
	[Dept] [nvarchar](50) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[MeasureType] [nvarchar](50) NOT NULL,
	[MeasurePointType] [char](1) NULL,
	[TagNumber] [nvarchar](50) NULL,
	[MeasureMode] [char](1) NOT NULL,
	[MeasurePeriod] [char](1) NOT NULL,
	[Times] [float] NULL,
	[DecimalNumber] [char](1) NULL,
	[RoundingOffType] [nvarchar](50) NULL,
	[DeviationRange] [float] NULL,
	[UseFlag] [char](1) NULL,
	[SeqNo] [int] NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
	[FoldRate] [int] NULL,
 CONSTRAINT [PK_t_EE_MeasureModel_1] PRIMARY KEY CLUSTERED 
(
	[MeasureCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_MeasureRecord]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_MeasureRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dept] [nvarchar](50) NOT NULL,
	[MeasureDate] [date] NOT NULL,
	[MeasureCode] [nvarchar](50) NOT NULL,
	[MeasureTime] [nvarchar](5) NULL,
	[LastValue] [decimal](22, 6) NULL,
	[ThisValue] [decimal](22, 6) NULL,
	[CorrectThisValue] [decimal](22, 6) NULL,
	[UsedQty] [decimal](22, 6) NULL,
	[CorrectValue] [decimal](22, 6) NULL,
	[ShiftCode] [nvarchar](50) NOT NULL,
	[TeamCode] [nvarchar](50) NULL,
	[TeamLeader] [nvarchar](50) NULL,
	[SaveFlag] [char](1) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
	[ResetState] [int] NULL,
	[DeviationValueState] [int] NULL,
 CONSTRAINT [PK_t_EE_MeasureRecord] PRIMARY KEY CLUSTERED 
(
	[Dept] ASC,
	[MeasureDate] ASC,
	[MeasureCode] ASC,
	[ShiftCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_NetDefine]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_NetDefine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[NetName] [nvarchar](100) NULL,
	[MaterialID] [int] NULL,
	[MaterialCode] [nvarchar](50) NULL,
	[BalanStartTime] [datetime] NULL,
	[BalancePeriod] [int] NULL,
	[BalanPeroidUnit] [char](1) NULL,
	[IsEnable] [char](1) NULL,
	[IsAutoBalance] [char](1) NULL,
	[Xoml] [nvarchar](4000) NULL,
	[Rules] [nvarchar](4000) NULL,
	[Layout] [nvarchar](4000) NULL,
	[NetVersion] [int] NOT NULL,
	[Type] [char](1) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EE_NETDEFINE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_NetNode]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_NetNode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PNodeID] [nvarchar](50) NOT NULL,
	[VertexOrEdge] [char](1) NOT NULL,
	[NetCode] [nvarchar](50) NOT NULL,
	[XCoordinate] [nvarchar](50) NULL,
	[YCoordinate] [nvarchar](50) NULL,
	[ImageUrl] [text] NULL,
	[SameLevelPriority] [char](1) NULL,
	[MeasureCode] [nvarchar](50) NOT NULL,
	[PowerWay] [char](1) NULL,
	[PowerValue] [decimal](18, 6) NULL,
	[BootFlag] [char](1) NULL,
	[NetVersion] [int] NOT NULL,
	[Layout] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[CorpCode] [nvarchar](50) NOT NULL,
	[ModifyCode] [nvarchar](50) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EE_NETNODE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_Person]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_EE_PERSON] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_PunishNotice]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_PunishNotice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheckedDeptCode] [nvarchar](50) NULL,
	[CheckDate] [datetime] NULL,
	[CheckType] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[DangerPoint] [nvarchar](50) NULL,
	[Phenomenon] [nvarchar](50) NULL,
	[PenaltyAmount] [float] NULL,
	[PenaltyTime] [char](1) NULL,
	[CompleteDate] [datetime] NULL,
	[NoticeDate] [datetime] NULL,
	[PenaltySts] [int] NULL,
	[UpFile] [nvarchar](50) NULL,
	[CreateCode] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[CheckInfoCode] [nvarchar](50) NULL,
	[PenaltyBasic] [nvarchar](50) NULL,
	[ConfirmCode] [nvarchar](50) NULL,
	[ConfirmDate] [datetime] NULL,
	[DeptType] [int] NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EE_UseEnergyProexam]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EE_UseEnergyProexam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CheckedDeptCode] [nvarchar](50) NOT NULL,
	[OperName] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[CheckDate] [datetime] NULL,
	[CheckCode] [nvarchar](50) NULL,
	[NoticeDate] [datetime] NULL,
	[CompleteDate] [datetime] NULL,
	[CompleteDetail] [nvarchar](50) NULL,
	[FineDate] [datetime] NULL,
	[DangerPoint] [nvarchar](50) NULL,
	[IsClose] [char](1) NULL,
	[Phenomenon] [nvarchar](1024) NULL,
	[ConfirmCode] [nvarchar](50) NULL,
	[SheetSts] [nvarchar](2) NULL,
	[UpFile] [nvarchar](1024) NULL,
	[DelFlag] [char](1) NULL,
	[CreateCode] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[IsCom] [char](1) NULL,
	[ConfirmDate] [datetime] NULL,
	[DeptType] [int] NULL,
	[Remark] [nvarchar](1024) NULL,
 CONSTRAINT [PK_t_EE_UseEnergyProexam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](50) NOT NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[Spec] [nvarchar](50) NULL,
	[TypeCode] [nvarchar](50) NULL,
	[IsKey] [char](1) NULL,
	[IsSpecial] [char](1) NULL,
	[DutyOfficerCode] [nvarchar](50) NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[ProductionDate] [datetime] NULL,
	[SerialNumber] [nvarchar](50) NULL,
	[ServiceLife] [decimal](22, 6) NULL,
	[InstallDate] [datetime] NULL,
	[InstallSite] [nvarchar](200) NULL,
	[CommissioningDate] [datetime] NULL,
	[ScrapDate] [datetime] NULL,
	[StatusCode] [nvarchar](50) NULL,
	[TechnicalStatusCode] [nvarchar](50) NULL,
	[Quality] [nvarchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[EModel] [nvarchar](50) NULL,
	[DrawNo] [nvarchar](50) NULL,
	[EParam] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_EM_Equipment_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment_AttachTool]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment_AttachTool](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[AttName] [nvarchar](50) NULL,
	[AttCode] [nvarchar](50) NULL,
	[AttSpec] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[UnitCode] [nvarchar](50) NULL,
	[AttSupplierCode] [nvarchar](50) NULL,
	[AttProductionDate] [datetime] NULL,
	[AttDutyOfficerCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_EQUIPMENT_ATTACHTOOL] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment_Defaut]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment_Defaut](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EMDftCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[EquipmentPositionCode] [nvarchar](50) NULL,
	[EMDftSourceOrderNo] [nvarchar](50) NULL,
	[EMDftDiscoverPersonCode] [nvarchar](50) NULL,
	[EMDftDiscoveryTime] [datetime] NULL,
	[EMDftReason] [nvarchar](1000) NULL,
	[IsSubmit] [char](1) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[rel_sht] [nvarchar](50) NULL,
	[rel_sta] [nvarchar](50) NULL,
	[beg_dtm] [datetime] NULL,
	[end_dtm] [datetime] NULL,
	[ent_dtm] [datetime] NULL,
	[entusr_id] [nvarchar](50) NULL,
	[emp_nam] [nvarchar](50) NULL,
	[fum_dtm] [datetime] NULL,
	[tsk_dtm] [datetime] NULL,
	[daytim_dtm] [nvarchar](50) NULL,
	[overdue_flg] [nvarchar](50) NULL,
	[isd_no] [nvarchar](50) NULL,
	[isd_id] [nvarchar](50) NULL,
	[isd_dsc] [nvarchar](500) NULL,
	[elc_id] [nvarchar](50) NULL,
	[elc_nam] [nvarchar](50) NULL,
	[upid] [nvarchar](50) NULL,
	[upnam] [nvarchar](50) NULL,
	[val_dsc] [nvarchar](4000) NULL,
	[stand_dsc] [nvarchar](100) NULL,
	[abn_flg] [nvarchar](50) NULL,
	[chk_dtm] [datetime] NULL,
	[flg_typ] [nvarchar](50) NULL,
	[usr_id] [nvarchar](50) NULL,
	[prtl_nam] [nvarchar](50) NULL,
	[val_num] [decimal](14, 4) NULL,
	[uni_nam] [nvarchar](100) NULL,
	[SolutionTime] [datetime] NULL,
	[SolutionPerson] [nvarchar](50) NULL,
	[SolutionType] [char](1) NULL,
 CONSTRAINT [PK_t_EM_MaintainStandBy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment_Extend]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment_Extend](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[DrawNo] [nvarchar](50) NULL,
	[Quality] [nvarchar](50) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[Amount] [int] NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[Purpose] [nvarchar](50) NULL,
	[IsConsume] [char](1) NULL,
	[IsPart] [char](1) NULL,
	[AttachPath] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_EQUIPMENT_EXTEND] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment_Manual]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment_Manual](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[MuName] [nvarchar](50) NULL,
	[MuCode] [nvarchar](50) NULL,
	[ManualTypeCode] [nvarchar](50) NULL,
	[MuDutyOfficerCode] [nvarchar](50) NULL,
	[MuFilePath] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_EQUIPMENT_MANUAL] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment_Position]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment_Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[emPositionCode] [nvarchar](50) NULL,
	[emPositionName] [nvarchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [nchar](10) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_EM_Equipment_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Equipment_Relation]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Equipment_Relation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[ChildEquipCode] [nvarchar](50) NULL,
	[Remark] [varchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_EQUIPMENT_RELATION] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Instrument]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Instrument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InsCode] [nvarchar](50) NOT NULL,
	[InsName] [nvarchar](50) NOT NULL,
	[ClassCode] [nvarchar](50) NULL,
	[Spec] [nvarchar](100) NULL,
	[ManuCode] [nvarchar](100) NULL,
	[InstallDate] [datetime] NULL,
	[TestingPeriod] [int] NULL,
	[TestingTime] [datetime] NULL,
	[ReminderTime] [int] NULL,
	[InsState] [nvarchar](10) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_EM_Instrument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_InstrumentCheckRecord]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_InstrumentCheckRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheckCode] [nvarchar](50) NOT NULL,
	[InsCode] [nvarchar](50) NOT NULL,
	[CheckTime] [datetime] NULL,
	[CheckState] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_EM_InstrumentCheckRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_InstrumentDocRecord]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_InstrumentDocRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocCode] [nvarchar](50) NOT NULL,
	[InsCode] [nvarchar](50) NOT NULL,
	[CheckCode] [nvarchar](50) NOT NULL,
	[RealDocDate] [datetime] NULL,
	[DocCompany] [nvarchar](100) NULL,
	[DocResult] [nvarchar](500) NULL,
	[State] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_EM_InstrumentDocRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_Lube]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_Lube](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LubeCode] [nvarchar](50) NULL,
	[LubeName] [nvarchar](50) NULL,
	[LubeUnitCode] [nvarchar](50) NULL,
	[Brand] [nvarchar](100) NULL,
	[LubeSupplierCode] [nvarchar](50) NULL,
	[LubeManufacturerCode] [nvarchar](50) NULL,
	[LubeTypeCode] [nvarchar](50) NULL,
	[Purpose] [nvarchar](1000) NULL,
	[Element] [nvarchar](1000) NULL,
	[Facade] [nvarchar](1000) NULL,
	[Density] [decimal](22, 6) NULL,
	[DensityUnitCode] [nvarchar](50) NULL,
	[Viscosity] [nvarchar](100) NULL,
	[ViscosityIndex] [nvarchar](100) NULL,
	[FlashPoint] [nvarchar](100) NULL,
	[SolidificationPoint] [nvarchar](100) NULL,
	[PourPoint] [nvarchar](100) NULL,
	[AcidValue] [nvarchar](100) NULL,
	[AlkaliValue] [nvarchar](100) NULL,
	[NeutralizationValue] [nvarchar](100) NULL,
	[MoistureValue] [nvarchar](100) NULL,
	[MechanicalImpurities] [nvarchar](100) NULL,
	[Ash] [nvarchar](100) NULL,
	[Carbon] [nvarchar](100) NULL,
	[Packing] [nvarchar](100) NULL,
	[StoreWay] [nvarchar](100) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_LUBE] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_LubricateOrder]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_LubricateOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[OrderTypeCode] [nvarchar](50) NULL,
	[OrderStsCode] [nvarchar](50) NULL,
	[LbstdCode] [nvarchar](50) NULL,
	[LubrPersonCode] [nvarchar](50) NULL,
	[PlanLubrTime] [datetime] NULL,
	[LubrTime] [datetime] NULL,
	[RLubeDosage] [decimal](22, 6) NULL,
	[IsComplete] [char](1) NULL,
	[LbResult] [nvarchar](1000) NULL,
	[AccptPersonCode] [nvarchar](50) NULL,
	[AccpTime] [datetime] NULL,
	[IsQualified] [char](1) NULL,
	[ShutPersonCode] [nvarchar](50) NULL,
	[ShutTime] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_LUBRICATEORDER] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_LubricateStandard]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_LubricateStandard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LbstdCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[EquipmentPositionCode] [nvarchar](50) NULL,
	[DutyOfficerCode] [nvarchar](50) NULL,
	[LbstdTypeCode] [nvarchar](50) NULL,
	[LubeCode] [nvarchar](50) NULL,
	[LubeDosage] [decimal](22, 6) NULL,
	[LubeDosageUnit] [nvarchar](50) NULL,
	[LbstdPeriod] [int] NULL,
	[LbstdPeriodUnit] [nvarchar](50) NULL,
	[LbstdRemindTime] [int] NULL,
	[FirstLubricateTime] [datetime] NULL,
	[LbstdIsEffectivity] [char](1) NULL,
	[FHandedOutTime] [int] NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_LUBRICATESTANDARD] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_MaintainApply]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_MaintainApply](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[EquipmentPositionCode] [nvarchar](50) NULL,
	[MaSourceTypeID] [int] NULL,
	[MaSourceOrderNo] [nvarchar](50) NULL,
	[ApplyPersonCode] [nvarchar](50) NULL,
	[MaDiscoverPersonCode] [nvarchar](50) NULL,
	[DutyOfficerCode] [nvarchar](50) NULL,
	[MaWorkPermitCode] [nvarchar](50) NULL,
	[MaDiscoveryTime] [datetime] NULL,
	[PlanMainTime] [datetime] NULL,
	[MaReason] [nvarchar](1000) NULL,
	[ISGenerated] [char](1) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_MAINTAINAPPLY] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_MaintainApplySparePart]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_MaintainApplySparePart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaSpCode] [nvarchar](50) NULL,
	[MaCode] [nvarchar](50) NULL,
	[SparePartCode] [nvarchar](50) NULL,
	[Dosage] [int] NULL,
	[DosageUnitCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_MAINTAINAPPLYSPAREPART] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_MaintainlOrderSparePart]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_MaintainlOrderSparePart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[ExCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[Dosage] [int] NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_MAINTAINLORDERSPAREPAR] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_MaintainOrder]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_MaintainOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[MaCode] [nvarchar](50) NULL,
	[OrderTypeCode] [nvarchar](50) NULL,
	[OrderStsCode] [nvarchar](50) NULL,
	[MainOfficerCode] [nvarchar](50) NULL,
	[MainTime] [datetime] NULL,
	[MTSpendTime] [decimal](22, 6) NULL,
	[MTNeedStop] [char](1) NULL,
	[MTStopTime] [datetime] NULL,
	[MTStopTimeLength] [decimal](22, 6) NULL,
	[Cost] [nvarchar](50) NULL,
	[IsComplete] [char](1) NULL,
	[MTResult] [nvarchar](1000) NULL,
	[AccptPersonCode] [nvarchar](50) NULL,
	[AccpTime] [datetime] NULL,
	[IsQualified] [char](1) NULL,
	[ShutPersonCode] [nvarchar](50) NULL,
	[ShutTime] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_MAINTAINORDER] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PatrolOrder]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PatrolOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[OrderTypeCode] [nvarchar](50) NULL,
	[OrderStsCode] [nvarchar](50) NULL,
	[PtstdCode] [nvarchar](50) NULL,
	[PatrPersonCode] [nvarchar](50) NULL,
	[PlanPatrTime] [datetime] NULL,
	[PatrTime] [datetime] NULL,
	[IsComplete] [char](1) NULL,
	[PtResult] [nvarchar](1000) NULL,
	[ShutPersonCode] [nvarchar](50) NULL,
	[ShutTime] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_PATROLORDER] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PatrolOrderPoint]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PatrolOrderPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[PtstdPCode] [nvarchar](50) NULL,
	[IsNormal] [char](1) NULL,
	[PtResult] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_PATROLORDERPOINT] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PatrolStandard]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PatrolStandard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PtstdCode] [nvarchar](50) NULL,
	[PtstdName] [nvarchar](50) NULL,
	[DutyOfficerCode] [nvarchar](50) NULL,
	[FirstPatrolTime] [datetime] NULL,
	[PtstdPeriod] [int] NULL,
	[PtstdRemindTime] [int] NULL,
	[PtstdIsEffectivity] [char](1) NULL,
	[FHandedOutTime] [int] NULL,
	[Remark] [varchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_PATROLSTANDARD] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PatrolStandardPoint]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PatrolStandardPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PtstdPCode] [nvarchar](50) NULL,
	[PtstdCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[EquipmentPositionCode] [nvarchar](50) NULL,
	[SequenceNo] [int] NULL,
	[CheckItem] [nvarchar](50) NULL,
	[CheckSubstance] [nvarchar](1000) NULL,
	[CheckMothod] [nvarchar](1000) NULL,
	[CheckRequest] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_PATROLSTANDARDLPOINT] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PointCheckOrder]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PointCheckOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[OrderTypeCode] [nvarchar](50) NULL,
	[OrderStsCode] [nvarchar](50) NULL,
	[PcstdCode] [nvarchar](50) NULL,
	[PchkPersonCode] [nvarchar](50) NULL,
	[PlanPchkTime] [datetime] NULL,
	[PchkTime] [datetime] NULL,
	[IsComplete] [char](1) NULL,
	[PcResult] [nvarchar](1000) NULL,
	[ShutPersonCode] [nvarchar](50) NULL,
	[ShutTime] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_POINTCHECKORDER] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PointCheckOrderItem]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PointCheckOrderItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[PcstdICode] [nvarchar](50) NULL,
	[IsNormal] [char](1) NULL,
	[Describe] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PointCheckStandard]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PointCheckStandard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PcstdCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](50) NULL,
	[EquipmentPositionCode] [nvarchar](50) NULL,
	[DutyOfficerCode] [nvarchar](50) NULL,
	[FirstCheckTime] [datetime] NULL,
	[PcstdPeriod] [int] NULL,
	[PcstdRemindTime] [int] NULL,
	[PcstdIsEffectivity] [char](1) NULL,
	[FHandedOutTime] [int] NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_POINTCHECKSTANDARD] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_PointCheckStandardItem]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_PointCheckStandardItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PcstdCode] [nvarchar](50) NULL,
	[PcstdICode] [nvarchar](50) NULL,
	[PcstdIName] [nvarchar](50) NULL,
	[CheckMothod] [nvarchar](1000) NULL,
	[CheckRequest] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_EM_WorkPermit]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EM_WorkPermit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WkpmtCode] [nvarchar](50) NULL,
	[WkpmtName] [nvarchar](50) NULL,
	[WkpmtTypeCode] [nvarchar](50) NULL,
	[WkpmtDeptCode] [nvarchar](50) NULL,
	[WkpmtDutyOfficerCode] [nvarchar](50) NULL,
	[AttachFile] [ntext] NULL,
	[Description] [nvarchar](1000) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_EM_WORKPERMIT] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ExportTask]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ExportTask](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [nvarchar](32) NOT NULL,
	[TableName] [nvarchar](32) NOT NULL,
	[TableType] [int] NOT NULL,
	[ProMode] [int] NOT NULL,
	[ProName] [nvarchar](32) NOT NULL,
	[Remarks] [nvarchar](1023) NULL,
	[PeriodMode] [int] NULL,
	[PeriodStartTime] [nvarchar](32) NULL,
	[Period] [nvarchar](8) NULL,
	[UserDefinedTime] [nvarchar](900) NULL,
	[Cmd] [nvarchar](1023) NULL,
	[version] [bigint] NOT NULL,
	[SaveToTheOtherDB] [nvarchar](1) NULL,
	[ExpDBServer] [nvarchar](32) NULL,
	[ExpDBName] [nvarchar](32) NULL,
	[ExpUserName] [nvarchar](32) NULL,
	[ExpDBPassword] [nvarchar](100) NULL,
 CONSTRAINT [PK_t_ExportTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ExportTask_deleted]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ExportTask_deleted](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_id] [int] NOT NULL,
 CONSTRAINT [PK_t_ExportTask_deleted] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_CustomInspectionTask]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_CustomInspectionTask](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[TaskName] [nvarchar](100) NULL,
	[PersonCode] [nvarchar](50) NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[WorkTime] [nvarchar](5) NULL,
	[AfterWorkTime] [nvarchar](5) NULL,
	[IssuedType] [char](1) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[Status] [char](1) NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
	[IsCreateOrderFlag] [char](1) NULL,
 CONSTRAINT [PK_T_IRI_CUSTOMINSPECTIONTASK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_CustomInspectionTaskDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_CustomInspectionTaskDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[DelFlag] [char](1) NULL,
 CONSTRAINT [PK_T_IRI_CUSTOMINSPECTIONTASKD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_CustomInspectionTaskDtlLastTime]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_CustomInspectionTaskDtlLastTime](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[DelFlag] [char](1) NULL,
	[LastTaskTime] [datetime] NULL,
	[StandardDtlID] [int] NULL,
	[ValidTime] [datetime] NULL,
 CONSTRAINT [PK_T_IRI_CUSTOMINSPECTIONTASKDtlLastTime] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_Defect]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_Defect](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DefectCode] [nvarchar](100) NULL,
	[OrderCode] [nvarchar](50) NULL,
	[OrderDtlID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[TagNumber] [nvarchar](50) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[MinNormalValue] [decimal](22, 6) NULL,
	[MaxNormalValue] [decimal](22, 6) NULL,
	[MinAlarmValue] [decimal](22, 6) NULL,
	[MaxAlarmValue] [decimal](22, 6) NULL,
	[RespondLevel] [nvarchar](50) NULL,
	[RespondHours] [int] NULL,
	[Status] [char](1) NULL,
	[SuggestDate] [date] NULL,
	[FilishDate] [datetime] NULL,
	[FilishSituation] [nvarchar](500) NULL,
	[ConfirmatDate] [datetime] NULL,
	[ConfirmatSituation] [nvarchar](500) NULL,
	[DefectPerson] [nvarchar](50) NULL,
	[FilishPerson] [nvarchar](50) NULL,
	[ConfirmatPerson] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
	[ActualValue] [decimal](22, 6) NULL,
	[Result] [char](1) NULL,
	[ExceptionDescribe] [nvarchar](500) NULL,
	[ExceptionType] [nvarchar](50) NULL,
	[PictureID] [nvarchar](500) NULL,
	[VideoID] [nvarchar](500) NULL,
 CONSTRAINT [PK_T_IRI_DEFECT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionGroup]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NULL,
	[GroupName] [nvarchar](100) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_IRI_InspectionGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionGroupDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionGroupDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NULL,
	[PersonCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
 CONSTRAINT [PK_T_IRI_InspectionGroupDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionOrder]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](50) NULL,
	[InspectionType] [char](1) NULL,
	[TaskCode] [nvarchar](50) NULL,
	[RouteCode] [nvarchar](50) NULL,
	[PointCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[GroupCode] [nvarchar](50) NULL,
	[ActualPerson] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderStatus] [char](1) NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CheckedDate] [datetime] NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
	[TaskID] [int] NULL,
	[TaskName] [nvarchar](100) NULL,
	[RouteName] [nvarchar](100) NULL,
	[PointName] [nvarchar](100) NULL,
	[GroupName] [nvarchar](100) NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[NFCCode] [nvarchar](100) NULL,
	[PersonName] [nvarchar](50) NULL,
	[SecondPerson] [nvarchar](50) NULL,
	[SecondPersonName] [nvarchar](50) NULL,
	[EquipmentStatusName] [nvarchar](50) NULL,
	[EquipmentStatus] [nvarchar](50) NULL,
	[AppealStatus] [nvarchar](1) NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionOrderDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionOrderDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[StandardDtlID] [int] NULL,
	[ActualValue] [decimal](22, 6) NULL,
	[Result] [char](1) NULL,
	[ExceptionDescribe] [nvarchar](500) NULL,
	[ExceptionType] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[PictureID] [nvarchar](500) NULL,
	[VideoID] [nvarchar](500) NULL,
	[TaskCode] [nvarchar](50) NULL,
	[PointCode] [nvarchar](50) NULL,
	[OrderStatus] [char](1) NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONORDERDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionPointDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionPointDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PointCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONPOINTDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionPoints]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionPoints](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PointCode] [nvarchar](50) NULL,
	[PointName] [nvarchar](100) NULL,
	[Status] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[NFCCode] [nvarchar](100) NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONPOINTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionRoute]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionRoute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RouteCode] [nvarchar](50) NULL,
	[RouteName] [nvarchar](100) NULL,
	[Status] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[UsingDeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONROUTE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionRouteDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionRouteDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RouteCode] [nvarchar](50) NULL,
	[PointCode] [nvarchar](50) NULL,
	[OrderNumber] [int] NULL,
	[DelFlag] [char](1) NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONROUTEDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionStandard]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionStandard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[InspectionCycle] [int] NULL,
	[OperatorRule] [nvarchar](500) NULL,
	[SafetyPrecaution] [nvarchar](500) NULL,
	[Content] [nvarchar](500) NULL,
	[Status] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONSTANDARD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_InspectionStandardDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_InspectionStandardDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[Content] [nvarchar](500) NULL,
	[TagNumber] [nvarchar](50) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[MinNormalValue] [decimal](22, 6) NULL,
	[MaxNormalValue] [decimal](22, 6) NULL,
	[MinAlarmValue] [decimal](22, 6) NULL,
	[MaxAlarmValue] [decimal](22, 6) NULL,
	[RespondLevel] [nvarchar](50) NULL,
	[RespondHours] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[Status] [char](1) NULL,
	[InspectionCycle] [int] NULL,
 CONSTRAINT [PK_T_IRI_INSPECTIONSTANDARDDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_LoseInspectAppealOrder]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_LoseInspectAppealOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppealCode] [nvarchar](100) NULL,
	[AppealPerson] [nvarchar](50) NULL,
	[AppealDeptCode] [nvarchar](50) NULL,
	[Reason] [nvarchar](500) NULL,
	[Status] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_IRI_LOSEINSPECTAPPEALORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_LoseInspectAppealOrderDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_LoseInspectAppealOrderDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppealCode] [nvarchar](100) NULL,
	[OrderCode] [nvarchar](50) NULL,
	[InspectionType] [char](1) NULL,
	[TaskCode] [nvarchar](50) NULL,
	[TaskName] [nvarchar](100) NULL,
	[RouteCode] [nvarchar](50) NULL,
	[RouteName] [nvarchar](100) NULL,
	[PointCode] [nvarchar](50) NULL,
	[PointName] [nvarchar](100) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[GroupCode] [nvarchar](50) NULL,
	[GroupName] [nvarchar](100) NULL,
	[ActualPerson] [nvarchar](50) NULL,
	[PersonName] [nvarchar](50) NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[SecondPerson] [nvarchar](50) NULL,
	[SecondPersonName] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_IRI_LOSEINSPECTAPPEALORDERDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_NormalInspectionTask]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_NormalInspectionTask](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[TaskName] [nvarchar](100) NULL,
	[RouteCode] [nvarchar](50) NULL,
	[GroupCode] [nvarchar](50) NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[WorkTime] [nvarchar](5) NULL,
	[AfterWorkTime] [nvarchar](5) NULL,
	[IssuedType] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Status] [char](1) NULL,
	[IsCreateOrderFlag] [char](1) NULL,
 CONSTRAINT [PK_T_IRI_NORMALINSPECTIONTASK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_IRI_NormalInspectionTaskDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_IRI_NormalInspectionTaskDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[PointCode] [nvarchar](50) NULL,
	[EquipmentCode] [nvarchar](100) NULL,
	[LastTaskTime] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[StandardDtlID] [int] NULL,
	[ValidTime] [datetime] NULL,
 CONSTRAINT [PK_T_IRI_NORMALINSPECTIONTASKD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_param]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_param](
	[reportid] [int] NOT NULL,
	[tagname] [nvarchar](75) NOT NULL,
	[ordinal] [int] NOT NULL,
	[datatype] [int] NOT NULL,
	[stattype] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_Dispatch]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_Dispatch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[DispatchContent] [nvarchar](4000) NULL,
	[Appendix] [nvarchar](500) NULL,
	[DispatchSts] [nvarchar](2) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_Dispatch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_DisptMessage]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_DisptMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[DispatchMsg] [nvarchar](1000) NULL,
	[Remark] [nvarchar](500) NULL,
	[RecGroup] [nvarchar](4000) NULL,
	[ReceiverCode] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_DisptMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_DisptProcedure]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_DisptProcedure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[OrderNo] [int] NULL,
	[ProContent] [nvarchar](4000) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [nchar](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_DisptProcedure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_Instruction]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_Instruction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InsCode] [nvarchar](50) NOT NULL,
	[InsTitle] [nvarchar](100) NULL,
	[InsType] [char](1) NULL,
	[IssueDeptCode] [nvarchar](500) NULL,
	[InsContent] [nvarchar](4000) NULL,
	[WarnType] [char](1) NULL,
	[RecGroup] [nvarchar](50) NULL,
	[RecPersons] [nvarchar](4000) NULL,
	[Appendix] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
	[InsSts] [char](1) NULL,
 CONSTRAINT [PK_PC_Instruction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_InstructionRcv]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_InstructionRcv](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PInsCode] [nvarchar](50) NOT NULL,
	[ReceiverCode] [nvarchar](50) NULL,
	[IsConfirm] [char](1) NULL,
	[ReplyContent] [nvarchar](500) NULL,
	[ConfirmDate] [datetime] NULL,
	[IsRead] [char](1) NULL,
 CONSTRAINT [PK_PC_InstructionRcv] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_Meeting]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_Meeting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[MeetingName] [nvarchar](200) NULL,
	[MeetingTheme] [nvarchar](100) NULL,
	[MeetingType] [nvarchar](50) NULL,
	[ShortKey] [nvarchar](100) NULL,
	[MeetingHost] [nvarchar](1000) NULL,
	[JoinPerson] [nvarchar](4000) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[MeetingContent] [nvarchar](4000) NULL,
	[Appendix] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[MeetingSts] [char](1) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_Meeting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_MeetingDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_MeetingDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PCode] [nvarchar](50) NOT NULL,
	[Event] [nvarchar](100) NULL,
	[ResponsablePerson] [nvarchar](50) NULL,
	[WorkContent] [nvarchar](4000) NULL,
	[PEndTime] [datetime] NULL,
	[AEndTime] [datetime] NULL,
	[ADesc] [nvarchar](200) NULL,
	[RemindType] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_MeetingDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_PrefabricateTemp]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_PrefabricateTemp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[ProCase] [nvarchar](max) NULL,
	[DelFlag] [nchar](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_PrefabricateTemp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_ReceiverGroup]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_ReceiverGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_ReceiverGroup ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_ReceiverGroupDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_ReceiverGroupDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PersonCode] [nvarchar](50) NOT NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_ReceiverGroupDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PC_ShiftHandover]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PC_ShiftHandover](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[HandoverTime] [datetime] NULL,
	[ShiftCode] [nvarchar](50) NULL,
	[TeamCode] [nvarchar](50) NULL,
	[CurrentDuty] [nvarchar](2000) NULL,
	[ProCase] [nvarchar](max) NULL,
	[Appendix] [nvarchar](500) NULL,
	[HandoverSts] [char](1) NULL,
	[Remark] [nvarchar](500) NULL,
	[ConfirmOpinion] [nvarchar](200) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_PC_ShiftHandover] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_Apply]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_Apply](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ApplyVouCode] [nvarchar](50) NOT NULL,
	[OrgVouCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[PlanVouCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[Qty] [decimal](22, 6) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[PackFormCode] [nvarchar](50) NULL,
	[InspDCode] [nvarchar](50) NULL,
	[InspPCode] [nvarchar](50) NULL,
	[DivdVouSts] [nvarchar](2) NULL,
	[ReceivePCode] [nvarchar](50) NULL,
	[ReceiveTime] [datetime] NULL,
	[DivideUserPCode] [nvarchar](50) NULL,
	[DivideTime] [datetime] NULL,
	[RetestFlag] [char](2) NULL,
	[RetestNum] [int] NULL,
	[TestPCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[VouTypeCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
	[GetSampleDate] [datetime] NULL,
	[PotPoint] [nvarchar](50) NULL,
	[PotVodeCode] [nvarchar](50) NULL,
	[BottleNo] [nvarchar](50) NULL,
	[AnalysisPanel] [nvarchar](50) NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[BottlesSate] [nvarchar](50) NULL,
 CONSTRAINT [PK_QA_Apply] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_AuditComments]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_AuditComments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_UnqualifiedVouNo] [nvarchar](50) NOT NULL,
	[AuditDCode] [nvarchar](50) NULL,
	[AuditPCode] [nvarchar](50) NULL,
	[AuditComments] [nvarchar](1000) NULL,
	[AuditTime] [datetime] NULL,
	[AuditOperation] [nvarchar](1000) NULL,
	[UnqualifiedType] [char](1) NULL,
	[BeforeAuditComments] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_AuditComments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspectDivide]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspectDivide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InspectDivdCode] [nvarchar](50) NOT NULL,
	[ApplyVouCode] [nvarchar](50) NULL,
	[OrgVouCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[PlanVouCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[Qty] [decimal](22, 6) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[PackFormCode] [nvarchar](50) NULL,
	[InspDCode] [nvarchar](50) NULL,
	[InspPCode] [nvarchar](50) NULL,
	[DivdVouSts] [nvarchar](2) NULL,
	[ReceivePCode] [nvarchar](50) NULL,
	[ReceiveTime] [datetime] NULL,
	[DivideUserPCode] [nvarchar](50) NULL,
	[DivideTime] [datetime] NULL,
	[RetestFlag] [char](2) NULL,
	[RetestNum] [int] NULL,
	[TestPCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[VouTypeCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
	[GetSampleDate] [datetime] NULL,
	[PotPoint] [nvarchar](50) NULL,
	[PotVodeCode] [nvarchar](50) NULL,
	[BottleNo] [nvarchar](50) NULL,
	[AnalysisPanel] [nvarchar](50) NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[BottlesSate] [nvarchar](50) NULL,
 CONSTRAINT [PK_QA_InspectDivide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspectDivideDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspectDivideDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_InspectDivdCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[InspItemCode] [nvarchar](50) NULL,
	[TestPCode] [nvarchar](500) NULL,
 CONSTRAINT [PK_QA_InspectDivideDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspectItem]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspectItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InspItemCode] [nvarchar](50) NOT NULL,
	[InspItemName] [nvarchar](50) NULL,
	[InspItemEnName] [nvarchar](50) NULL,
	[PYCode] [nvarchar](50) NULL,
	[IsNumber] [int] NULL,
	[IsSPCKey] [int] NULL,
	[IsHeavyMetal] [int] NULL,
	[UnitCode] [nvarchar](50) NULL,
	[InstrumentCode] [nvarchar](50) NULL,
	[IsAutoGet] [int] NULL,
	[InspMethoddesc] [nvarchar](500) NULL,
	[Remark] [nvarchar](1000) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_InspectItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspectPlan]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspectPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlanVouCode] [nvarchar](50) NOT NULL,
	[PlanName] [nvarchar](100) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[SplPotCode] [nvarchar](50) NULL,
	[GenerateNum] [decimal](18, 0) NULL,
	[PlanTime] [datetime] NULL,
	[PlanDesc] [nvarchar](500) NULL,
	[ProDeptCode] [nvarchar](50) NULL,
	[TeamCode] [nvarchar](50) NULL,
	[Qty] [decimal](22, 6) NULL,
	[TrainsCode] [nvarchar](50) NULL,
	[InspDCode] [nvarchar](50) NULL,
	[InspPCode] [nvarchar](50) NULL,
	[VouSts] [nvarchar](2) NULL,
	[Remark] [nvarchar](1000) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DelFlag] [smallint] NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_InspectPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspReport]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspReport](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReportVouCode] [nvarchar](50) NOT NULL,
	[OrgVouCode] [nvarchar](50) NULL,
	[DivideUserPCode] [nvarchar](50) NULL,
	[DivideTime] [datetime] NULL,
	[RecordVouCode] [nvarchar](50) NULL,
	[InspectDivdCode] [nvarchar](50) NULL,
	[ApplyVouCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[Qty] [decimal](22, 6) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[PackFormCode] [nvarchar](50) NULL,
	[InspDCode] [nvarchar](50) NULL,
	[InspPCode] [nvarchar](50) NULL,
	[ApplyDate] [datetime] NULL,
	[ApplyPCode] [nvarchar](50) NULL,
	[GetSampleDate] [datetime] NULL,
	[SampleNo] [nvarchar](50) NULL,
	[GetSplPCode] [nvarchar](50) NULL,
	[SampleDCode] [nvarchar](50) NULL,
	[RetestFlag] [char](2) NULL,
	[RetestNum] [int] NULL,
	[RetestPCode] [nvarchar](50) NULL,
	[InspDate] [datetime] NULL,
	[TestPCode] [nvarchar](50) NULL,
	[PersonSign] [nvarchar](50) NULL,
	[DivdVouSts] [nvarchar](50) NULL,
	[ReportManagerPCode] [nvarchar](50) NULL,
	[ReportDate] [datetime] NULL,
	[MaterialQaLevCode] [nvarchar](50) NULL,
	[RecheckPCode] [nvarchar](50) NULL,
	[RecheckTime] [datetime] NULL,
	[Remark] [nvarchar](1000) NULL,
	[VouTypeCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
	[PotPoint] [nvarchar](50) NULL,
	[PotVodeCode] [nvarchar](50) NULL,
	[BottleNo] [nvarchar](50) NULL,
	[AnalysisPanel] [nvarchar](50) NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[BottlesSate] [nvarchar](50) NULL,
 CONSTRAINT [PK_QA_InspReport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspReportDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspReportDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_ReportVouCode] [nvarchar](50) NULL,
	[ValidFlag] [char](1) NULL,
	[InspItemCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[InspValue] [nvarchar](50) NULL,
	[InspDesc] [nvarchar](50) NULL,
	[ItemQaLevCode] [nvarchar](50) NULL,
	[TestPCode] [nvarchar](500) NULL,
	[InspMethoddesc] [nvarchar](500) NULL,
	[Remark] [nvarchar](1000) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_InspReportDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspTicket]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspTicket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RecordVouCode] [nvarchar](50) NOT NULL,
	[OrgVouCode] [nvarchar](50) NULL,
	[DivideUserPCode] [nvarchar](50) NULL,
	[DivideTime] [datetime] NULL,
	[ApplyVouCode] [nvarchar](50) NULL,
	[InspectDivdCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[Qty] [decimal](22, 6) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[PackFormCode] [nvarchar](50) NULL,
	[InspDCode] [nvarchar](50) NULL,
	[InspPCode] [nvarchar](50) NULL,
	[ApplyDate] [datetime] NULL,
	[ApplyPCode] [nvarchar](50) NULL,
	[GetSampleDate] [datetime] NULL,
	[SampleNo] [nvarchar](50) NULL,
	[GetSplPCode] [nvarchar](50) NULL,
	[SampleDCode] [nvarchar](50) NULL,
	[RetestFlag] [char](1) NULL,
	[RetestNum] [int] NULL,
	[RetestPCode] [nvarchar](50) NULL,
	[InspDate] [datetime] NULL,
	[TestPCode] [nvarchar](50) NULL,
	[PersonSign] [nvarchar](50) NULL,
	[DivdVouSts] [nvarchar](50) NULL,
	[Grade] [int] NULL,
	[Remark] [nvarchar](1000) NULL,
	[VouTypeCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
	[PotPoint] [nvarchar](50) NULL,
	[PotVodeCode] [nvarchar](50) NULL,
	[BottleNo] [nvarchar](50) NULL,
	[AnalysisPanel] [nvarchar](50) NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[BottlesSate] [nvarchar](50) NULL,
 CONSTRAINT [PK_QA_InspTicket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InspTicketDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InspTicketDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_RecordVouCode] [nvarchar](50) NULL,
	[ValidFlag] [nvarchar](1) NULL,
	[InspItemCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[InspValue] [nvarchar](50) NULL,
	[InspDesc] [nvarchar](50) NULL,
	[ItemQaLevCode] [nvarchar](50) NULL,
	[MustFlag] [char](1) NULL,
	[TestPCode] [nvarchar](500) NULL,
	[InspMethoddesc] [nvarchar](500) NULL,
	[Remark] [nvarchar](1000) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_InspTicketDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_InstrumentInfo]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_InstrumentInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InstrumentCode] [nvarchar](50) NOT NULL,
	[InstrumentName] [nvarchar](50) NULL,
	[LineType] [nvarchar](50) NULL,
	[Parameter] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_InstrumentInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_ItemCalculate]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_ItemCalculate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_RecordVouCode] [nvarchar](50) NULL,
	[InspItemCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[Param1] [nvarchar](50) NULL,
	[Param1Value] [decimal](22, 6) NULL,
	[Param2] [nvarchar](50) NULL,
	[Param2Value] [decimal](22, 6) NULL,
	[Param3] [nvarchar](50) NULL,
	[Param3Value] [decimal](22, 6) NULL,
	[Param4] [nvarchar](50) NULL,
	[Param4Value] [decimal](22, 6) NULL,
	[Param5] [nvarchar](50) NULL,
	[Param5Value] [decimal](22, 6) NULL,
	[Param6] [nvarchar](50) NULL,
	[Param6Value] [decimal](22, 6) NULL,
	[Param7] [nvarchar](50) NULL,
	[Param7Value] [decimal](22, 6) NULL,
	[Param8] [nvarchar](50) NULL,
	[Param8Value] [decimal](22, 6) NULL,
	[Param9] [nvarchar](50) NULL,
	[Param9Value] [decimal](22, 6) NULL,
	[Param10] [nvarchar](50) NULL,
	[Param10Value] [decimal](22, 6) NULL,
	[CalculateResult] [decimal](22, 6) NULL,
	[DataGroup] [int] NULL,
 CONSTRAINT [PK_QA_ItemCalculate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_MaterialInspStd]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_MaterialInspStd](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InspStdCode] [nvarchar](50) NOT NULL,
	[InspStdName] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[StdDesc] [nvarchar](500) NULL,
	[Remark] [nvarchar](1000) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [nvarchar](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_MaterialInspStd] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_MaterialInspStdDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_MaterialInspStdDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_InspStdCode] [nvarchar](50) NULL,
	[InspItemCode] [nvarchar](50) NULL,
	[Standard] [nvarchar](50) NULL,
	[Mark1] [nvarchar](50) NULL,
	[LowerLimit] [decimal](22, 6) NULL,
	[Mark2] [nvarchar](50) NULL,
	[UpperLimit] [decimal](22, 6) NULL,
	[Expression] [nvarchar](50) NULL,
	[IsCheck] [int] NULL,
	[CheckOffset] [decimal](22, 6) NULL,
	[RoundWayCode] [nvarchar](50) NULL,
	[IsAutoGet] [int] NULL,
	[ReservedBitsCode] [nvarchar](50) NULL,
	[MustFlag] [int] NULL,
	[ValidFlag] [int] NULL,
	[ItemQaLevCode] [nvarchar](50) NULL,
	[IsNumber] [int] NULL,
	[IsCalculate] [int] NULL,
	[InspItemParam] [nvarchar](50) NULL,
	[InspItemCalForm] [nvarchar](200) NULL,
	[IsEnum] [int] NULL,
	[OptionOne] [nvarchar](50) NULL,
	[OptionTwo] [nvarchar](50) NULL,
	[OptionThree] [nvarchar](50) NULL,
	[OptionFour] [nvarchar](50) NULL,
	[DefaultOption] [nvarchar](200) NULL,
	[Remark] [nvarchar](500) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
	[SamplePotCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_QA_MaterialInspStdDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_ProductQaLevel]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_ProductQaLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductQaLevCode] [nvarchar](50) NOT NULL,
	[ProductQaLevName] [nvarchar](50) NULL,
	[ProductQaLevScore] [decimal](22, 6) NULL,
	[Remark] [nvarchar](500) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_ProductQaLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_RetainedSample]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_RetainedSample](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RetainedSampleCode] [nvarchar](50) NOT NULL,
	[ReportVouCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[RemainDate] [datetime] NULL,
	[RetainedQty] [decimal](22, 6) NULL,
	[SamplePCode] [nvarchar](50) NULL,
	[ValidPeriod] [int] NULL,
	[InspResult] [nvarchar](50) NULL,
	[SampleSts] [nvarchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_RetainedSample] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_RetainedSampleStd]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_RetainedSampleStd](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_InspStdCode] [nvarchar](50) NULL,
	[RetainedQty] [decimal](22, 6) NULL,
	[ValidPeriod] [int] NULL,
	[Remark] [nvarchar](1000) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_RetainedSampleStd] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_SamplePot]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_SamplePot](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PotCode] [nvarchar](50) NOT NULL,
	[PotName] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[PotLocation] [nvarchar](50) NULL,
	[PotQty] [decimal](22, 6) NULL,
	[PotPCode] [nvarchar](50) NULL,
	[PotDCode] [nvarchar](50) NULL,
	[PotPeriod] [decimal](22, 6) NULL,
	[PotFDateTime] [datetime] NULL,
	[SampleTypeCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_SamplePot] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_spc_temp]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_spc_temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResultValue] [decimal](22, 6) NULL,
	[UpperLimit] [decimal](22, 6) NULL,
	[LowerLimit] [decimal](22, 6) NULL,
	[InspDatetime] [datetime] NULL,
	[xSTDEV] [decimal](22, 6) NULL,
 CONSTRAINT [PK_QA_spc_temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_QA_UnqualifiedAudit]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_QA_UnqualifiedAudit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnqualifiedVouNo] [nvarchar](50) NOT NULL,
	[ReportVouCode] [nvarchar](50) NULL,
	[RecordVouCode] [nvarchar](50) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InspStdCode] [nvarchar](50) NULL,
	[Qty] [decimal](22, 6) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[PackForm] [nvarchar](50) NULL,
	[InspDCode] [nvarchar](50) NULL,
	[ApplyDate] [datetime] NULL,
	[ApplyPCode] [nvarchar](50) NULL,
	[GetSampleDate] [datetime] NULL,
	[SampleNo] [nvarchar](50) NULL,
	[GetSplPCode] [nvarchar](50) NULL,
	[InspDate] [datetime] NULL,
	[RetestFlag] [char](2) NULL,
	[RetestNum] [int] NULL,
	[TestPCode] [nvarchar](50) NULL,
	[DivdVouSts] [nvarchar](50) NULL,
	[RetestPCode] [nvarchar](50) NULL,
	[ReportManagerPCode] [nvarchar](50) NULL,
	[ReportDate] [datetime] NULL,
	[MaterialQaLevCode] [nvarchar](50) NULL,
	[RecheckPCode] [nvarchar](50) NULL,
	[RecheckTime] [datetime] NULL,
	[ApplyDCode] [nvarchar](50) NULL,
	[ApplyAuditTime] [datetime] NULL,
	[AuditComments] [nvarchar](50) NULL,
	[AuditConclusion] [nvarchar](50) NULL,
	[ProductSection] [nvarchar](50) NULL,
	[DutyShift] [nvarchar](50) NULL,
	[DutyDept] [nvarchar](50) NULL,
	[FormNum] [nvarchar](50) NULL,
	[UnqualifiedType] [char](1) NULL,
	[Remark] [varchar](1000) NULL,
	[VouTypeCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[FlowSts] [int] NULL,
 CONSTRAINT [PK_QA_UnqualifiedAudit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_report]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](31) NOT NULL,
	[saveoption] [int] NOT NULL,
	[cmd] [nvarchar](1023) NOT NULL,
	[version] [bigint] NOT NULL,
	[desc] [nvarchar](63) NULL,
 CONSTRAINT [PK_t_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_report_deleted]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_report_deleted](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report_id] [int] NOT NULL,
 CONSTRAINT [PK_t_report_deleted] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_RMIS_AlarmData]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RMIS_AlarmData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](100) NOT NULL,
	[TagClctr] [nvarchar](100) NULL,
	[GroupDtlId] [int] NOT NULL,
	[GroupTagDtlID] [int] NULL,
	[AlarmValue] [decimal](38, 6) NULL,
	[CurrentAlarmValue] [decimal](38, 6) NULL,
	[AlarmLevel] [int] NULL,
	[AlarmAttr] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[RecoveryTime] [datetime] NULL,
	[HandleTime] [datetime] NULL,
	[Handler] [nvarchar](50) NULL,
	[RecordType] [nvarchar](50) NULL,
	[RecordDetail] [text] NULL,
	[State] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_RMIS_AlarmData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_RMIS_AlarmGroupDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RMIS_AlarmGroupDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[DeployCode] [nvarchar](200) NULL,
	[TagClctr] [nvarchar](50) NULL,
	[TagName] [nvarchar](50) NULL,
	[Period] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[CameraAddress] [nvarchar](500) NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[CorpCode] [nvarchar](50) NOT NULL,
	[ModifyCode] [nvarchar](50) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RMIS_ALARMGROUPDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_RMIS_AlarmGroupTagDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RMIS_AlarmGroupTagDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[Operate1] [char](1) NULL,
	[SetValue1] [decimal](22, 6) NULL,
	[Operate2] [char](1) NULL,
	[SetValue2] [decimal](22, 6) NULL,
	[Connector] [char](2) NULL,
	[AlarmLevel] [int] NULL,
	[AlarmAttr] [int] NULL,
	[ReceiverCode] [nvarchar](4000) NULL,
	[IsMsgRemind] [char](1) NULL,
	[DelFlag] [char](1) NOT NULL,
 CONSTRAINT [PK_RMIS_ALARMGROUPTAGDTL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_RMIS_AlarmMessageRcv]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RMIS_AlarmMessageRcv](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[ReceiverCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_RMIS_ALARMMESSAGERCV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_ClsActivities]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_ClsActivities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[OrgUnitCode] [nvarchar](50) NULL,
	[ActiveTimeStart] [date] NULL,
	[ActiveTimeEnd] [date] NULL,
	[PcActivityCode] [nvarchar](50) NULL,
	[ParticipantsCode] [text] NULL,
	[ActTheme] [nvarchar](50) NULL,
	[Appendix] [nvarchar](4000) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_ClsActivities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_DmoHealth]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_DmoHealth](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[MonitoredUnitCode] [nvarchar](50) NULL,
	[Post] [nvarchar](50) NULL,
	[OdiFactorCode] [nvarchar](50) NULL,
	[ExpLimit] [nvarchar](50) NULL,
	[IsUpStandardCode] [nvarchar](50) NULL,
	[MoniPeopleCode] [nvarchar](50) NULL,
	[MoniDate] [date] NULL,
	[MoniMethod] [nvarchar](500) NULL,
	[MoniConclusion] [nvarchar](500) NULL,
	[ExcurLimits] [nvarchar](50) NULL,
	[MAC] [nvarchar](50) NULL,
	[PCSTEL] [nvarchar](50) NULL,
	[PCTWA] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_Monitor_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_DrillEvaluation]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_DrillEvaluation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[DrillUnitCode] [nvarchar](50) NULL,
	[DrillNameCode] [nvarchar](50) NULL,
	[EvaTime] [date] NULL,
	[EvaLocation] [nvarchar](50) NULL,
	[EropiPlace] [nvarchar](4000) NULL,
	[PeaeUsed] [nvarchar](4000) NULL,
	[AfcSystem] [nvarchar](4000) NULL,
	[EshcParticipants] [nvarchar](4000) NULL,
	[TrmdPlan] [nvarchar](4000) NULL,
	[EspProcesses] [nvarchar](4000) NULL,
	[DrillSummary] [nvarchar](4000) NULL,
	[EvaluatorCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_DrillEvaluation_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_EmatManagement]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_EmatManagement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[MetrialName] [nvarchar](50) NULL,
	[SpeciModel] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[ItemsNum] [nvarchar](50) NULL,
	[RecipientCode] [nvarchar](50) NULL,
	[StoragePlace] [nvarchar](50) NULL,
	[EmergencyUse] [nvarchar](500) NULL,
	[UseMethod] [nvarchar](500) NULL,
	[SearchCycle] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[DistrTime] [nvarchar](50) NULL,
	[dtlCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_EmatManagement_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_EmergencyPlan]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_EmergencyPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[PlanName] [nvarchar](50) NULL,
	[PlanLevelCode] [nvarchar](50) NULL,
	[AppliObjectCode] [nvarchar](50) NULL,
	[Appendix] [nvarchar](4000) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_EmergencyPlan_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_GroupSafetyActivities]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_GroupSafetyActivities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Team] [nvarchar](50) NULL,
	[ActiveTimeStart] [datetime] NULL,
	[ActiveTimeEnd] [datetime] NULL,
	[PcActivityCode] [nvarchar](50) NULL,
	[WorkShopCode] [nvarchar](50) NULL,
	[WorkShopLeaderCode] [nvarchar](50) NULL,
	[ParticipantsCode] [text] NULL,
	[ActTheme] [nvarchar](50) NULL,
	[Appendix] [nvarchar](4000) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_GroupSafetyActivities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_LawList]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_LawList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[FileTypeCode] [nvarchar](50) NULL,
	[FileNum] [nvarchar](50) NULL,
	[FileName] [nvarchar](50) NULL,
	[ReleaseDate] [date] NULL,
	[LatestModifyDate] [date] NULL,
	[ImpleteDate] [date] NULL,
	[ImpleteDeptCode] [nvarchar](50) NULL,
	[Access] [nvarchar](1024) NULL,
	[Appendix] [nvarchar](1024) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_LawList_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_LawModify]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_LawModify](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[OldFileNumCode] [nvarchar](50) NULL,
	[OldFileNameCode] [nvarchar](50) NULL,
	[NewFileNum] [nvarchar](50) NULL,
	[NewFileName] [nvarchar](50) NULL,
	[ImpleteDateCode] [date] NULL,
	[ModifyFile] [nvarchar](50) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_LawModify_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_OrgSecuCouncil]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_OrgSecuCouncil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[CNameCode] [nvarchar](50) NULL,
	[EName] [nvarchar](50) NULL,
	[GenderCode] [nchar](10) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[ResponsibilityCode] [nvarchar](50) NULL,
	[PostCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[CompanyCode] [nvarchar](50) NULL,
	[EmailCode] [nvarchar](50) NULL,
	[CellPhoneNumCode] [nvarchar](50) NULL,
	[LandlineNum] [nvarchar](50) NULL,
	[IdentityCardNum] [nvarchar](50) NULL,
	[EducationCode] [nvarchar](50) NULL,
	[EntryTime] [date] NULL,
	[PoliticsStatusCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_OrgSecuCouncil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_OrgSecuCouncilRoot]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_OrgSecuCouncilRoot](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[PCode] [nvarchar](50) NULL,
	[CName] [nvarchar](50) NULL,
	[OrderNo] [nvarchar](50) NULL,
	[IsRoot] [nvarchar](50) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_SE_OrgSecuCouncilRoot] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_PersonnelInfos]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_PersonnelInfos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CNameCode] [nvarchar](50) NULL,
	[Gender] [nchar](10) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[PoliticsStatusCode] [nvarchar](50) NULL,
	[IdentityCardNum] [nvarchar](50) NULL,
	[EducationCode] [nvarchar](50) NULL,
	[Responsibility] [nvarchar](50) NULL,
	[Post] [nvarchar](50) NULL,
	[Deptartment] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CellphoneNum] [int] NULL,
	[LandLineNum] [nvarchar](50) NULL,
	[EntryTime] [date] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_SE_PersonnelInfos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_PlanDrill]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_PlanDrill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[DrillName] [nvarchar](50) NOT NULL,
	[DrillLocation] [nvarchar](50) NULL,
	[OrgDepartmentCode] [nvarchar](50) NULL,
	[DrillDeptCode] [nvarchar](50) NULL,
	[CommanderCode] [nvarchar](50) NULL,
	[DrillTime] [date] NULL,
	[ParticipantCode] [text] NULL,
	[DrillTypeCode] [nvarchar](50) NULL,
	[MaterialPrep] [nvarchar](500) NULL,
	[DrillDes] [nvarchar](4000) NULL,
	[ExistProblem] [nvarchar](50) NULL,
	[Suggest] [nvarchar](50) NULL,
	[Author] [nvarchar](50) NULL,
	[Auditor] [nvarchar](50) NULL,
	[AuditDept] [nvarchar](50) NULL,
	[FieldDes] [nvarchar](4000) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[CorpCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_SE_PlanDrill_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_PracticePlan]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_PracticePlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL,
	[Month] [nvarchar](50) NULL,
	[PpName] [nvarchar](50) NULL,
	[PpTime] [nvarchar](50) NULL,
	[PracticeWays] [nvarchar](50) NULL,
	[PracticeGoal] [nvarchar](500) NULL,
	[PiChargeCode] [nvarchar](50) NULL,
	[CoorDeptCode] [nvarchar](50) NULL,
	[EmPreparation] [nvarchar](4000) NULL,
	[FramingPersonCode] [nvarchar](50) NULL,
	[AppliObjectCode] [nvarchar](50) NULL,
	[Auditor] [nvarchar](50) NULL,
	[AuditTime] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_PracticePlan_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_SafetyMeeting]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_SafetyMeeting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[MeetingName] [nvarchar](50) NULL,
	[MeetingTime] [datetime] NULL,
	[MeetingTimeEnd] [datetime] NULL,
	[MeetingPlace] [nvarchar](50) NULL,
	[MeetingCategoryCode] [nvarchar](50) NULL,
	[TheHostCode] [nvarchar](50) NULL,
	[ParticipantsCode] [text] NULL,
	[MeetingContent] [nvarchar](4000) NULL,
	[Appendix] [nvarchar](4000) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputDate] [datetime] NULL,
	[InputCode] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_SafetyMeeting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_SocManagement]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_SocManagement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CertifCode] [nvarchar](50) NULL,
	[CardHolderCode] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[DepartmentsCode] [nvarchar](50) NULL,
	[EnterTime] [datetime] NULL,
	[CertifCategory] [nvarchar](50) NULL,
	[CertifLevel] [nvarchar](50) NULL,
	[IssuingOrgan] [nvarchar](50) NULL,
	[TransferTime] [date] NULL,
	[RetrialTime] [date] NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_SE_SocManagement_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_StaffCheckAccount]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_StaffCheckAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[NameCode] [nvarchar](50) NULL,
	[PostCode] [nvarchar](50) NULL,
	[WorkshopCode] [nvarchar](50) NULL,
	[InspDate] [date] NULL,
	[InspTypeCode] [nvarchar](50) NULL,
	[InspFactor] [nvarchar](50) NULL,
	[DamageFactors] [nvarchar](50) NULL,
	[Conclusions] [nvarchar](50) NULL,
	[Institution] [nvarchar](50) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_SE_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_TraEvaluation]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_TraEvaluation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[TrainDateCode] [date] NULL,
	[TrainUnitCode] [nvarchar](50) NULL,
	[PersonInChargeCode] [nvarchar](50) NULL,
	[TrainContentCode] [nvarchar](4000) NULL,
	[TrainLocationCode] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[TrainEvaluation] [nvarchar](500) NULL,
	[TrainNameCode] [nvarchar](50) NULL,
	[ParticipantsCode] [text] NULL,
	[Appendix] [nvarchar](4000) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_TraEvaluation_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_TrainingProgram]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_TrainingProgram](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[TrainName] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[TrainDate] [date] NULL,
	[TrainContent] [nvarchar](4000) NULL,
	[PersonInChargeCode] [nvarchar](50) NULL,
	[ClassHour] [nvarchar](50) NULL,
	[TrainUnitCode] [nvarchar](50) NULL,
	[ExamForm] [nvarchar](50) NULL,
	[TrainLocation] [nvarchar](50) NULL,
	[ProjectAppointeesCode] [nvarchar](50) NULL,
	[ProjectDate] [date] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputeDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_TrainingProgram_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SE_WsActivities]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SE_WsActivities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[OrgUnitCode] [nvarchar](50) NULL,
	[ActTimeStart] [date] NULL,
	[ActTimeEnd] [date] NULL,
	[PcActivityCode] [nvarchar](50) NULL,
	[ParticipantsCode] [text] NULL,
	[ActTheme] [nvarchar](500) NULL,
	[Appendix] [nvarchar](4000) NULL,
	[Remark] [nvarchar](4000) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_t_SE_WsActivities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SR_Config]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SR_Config](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [nvarchar](50) NOT NULL,
	[TagID] [int] NOT NULL,
	[DelFlag] [char](1) NOT NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderNo] [int] NULL,
	[WeightCode] [nvarchar](50) NULL,
	[fullNames] [nvarchar](50) NULL,
	[OtherID] [int] NULL,
	[CurrentAlarmValue] [nvarchar](50) NULL,
	[Operate1] [char](1) NULL,
	[Operate2] [char](1) NULL,
	[Connector] [char](2) NULL,
	[SetValue1] [decimal](22, 6) NULL,
	[SetValue2] [decimal](22, 6) NULL,
 CONSTRAINT [PK_t_SR_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SR_Weight]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SR_Weight](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WeightCode] [nvarchar](50) NOT NULL,
	[WeightType] [nvarchar](50) NULL,
	[WeightValue] [float] NULL,
 CONSTRAINT [PK_t_SR_Weight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_tag]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_tag](
	[id] [int] NOT NULL,
	[clctr] [int] NULL,
	[name] [nvarchar](60) NULL,
	[ioaddr] [nvarchar](76) NULL,
	[type] [tinyint] NULL,
	[version] [int] NULL,
	[arcmode] [int] NULL,
	[arcto] [int] NULL,
	[arcoff] [int] NULL,
	[clctrate] [int] NULL,
	[clctto] [int] NULL,
	[desc] [nvarchar](32) NULL,
	[unit] [nvarchar](16) NULL,
	[arcddbnd] [float] NULL,
	[clctddbnd] [float] NULL,
	[minimal] [float] NULL,
	[maximal] [float] NULL,
	[lowlimit] [float] NULL,
	[highlimit] [float] NULL,
	[lololimit] [float] NULL,
	[hihilimit] [float] NULL,
 CONSTRAINT [PK_T_TAG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_tag_mobile]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_tag_mobile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sortid] [int] NULL,
	[sortname] [nvarchar](50) NULL,
	[secondname] [nvarchar](50) NULL,
	[clctrname] [nvarchar](50) NULL,
	[tagname] [nvarchar](50) NULL,
	[tagdesc] [nvarchar](50) NULL,
	[unit] [nvarchar](50) NULL,
	[sortby] [int] NULL,
 CONSTRAINT [PK_t_tag_mobile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_type_string]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_type_string](
	[typeid] [tinyint] NOT NULL,
	[typestring] [nvarchar](31) NOT NULL,
 CONSTRAINT [PK_T_TYPE_STRING] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_version]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_version](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dummy] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Delegation]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Delegation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
	[DelegationStartTime] [datetime] NULL,
	[DelegationEndTime] [datetime] NULL,
	[DelegationFlowCode] [nvarchar](50) NULL,
	[ToDelegationUserCode] [nvarchar](50) NULL,
	[DelegationDateTime] [datetime] NULL,
	[Remark] [nvarchar](1000) NULL,
	[DelegationSts] [char](1) NULL,
 CONSTRAINT [PK_WF_Delegation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Resources]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Resources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResourceCode] [nvarchar](50) NULL,
	[StepCode] [nvarchar](50) NULL,
	[PowerType] [char](1) NULL,
 CONSTRAINT [PK_WF_Resources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Resources_Person]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Resources_Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResourceCode] [nvarchar](50) NULL,
	[PersonCode] [nvarchar](500) NULL,
	[PersonName] [nvarchar](500) NULL,
	[ExceptPerson] [nvarchar](500) NULL,
 CONSTRAINT [PK_WF_Resources_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Signature]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Signature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[EntityName] [nvarchar](100) NULL,
	[Name] [nvarchar](200) NULL,
	[Size] [nvarchar](50) NULL,
	[UploadTime] [datetime] NULL,
	[DelFlag] [char](1) NULL,
	[PersonCode] [nvarchar](50) NULL,
	[SignaturePath] [text] NULL,
	[CurrentSignature] [char](1) NULL,
 CONSTRAINT [PK_WF_Signature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Task]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Task](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[TaskTitle] [nvarchar](500) NULL,
	[FlowCode] [nvarchar](50) NULL,
	[TaskSenderCode] [nvarchar](50) NULL,
	[StartDateTime] [datetime] NULL,
	[ActualityCompletedTime] [datetime] NULL,
	[TaskSts] [char](1) NULL,
	[Remark] [nvarchar](1000) NULL,
 CONSTRAINT [PK_WF_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Task_Step]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Task_Step](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StepNum] [int] NULL,
	[StepCode] [nvarchar](50) NULL,
	[TaskCode] [nvarchar](50) NULL,
	[ChildTaskCode] [nvarchar](50) NULL,
	[StepName] [nvarchar](500) NULL,
	[StepOpenTime] [datetime] NULL,
	[ApprovePersonCode] [nvarchar](50) NULL,
	[ApproveDateTime] [datetime] NULL,
	[ApproveComment] [nvarchar](500) NULL,
	[ExpandData] [ntext] NULL,
	[IsSignature] [char](1) NULL,
	[StepSts] [char](1) NULL,
	[Remark] [nvarchar](1000) NULL,
	[BusinessCode] [nvarchar](50) NULL,
	[BusinessDataCode] [nvarchar](50) NULL,
	[BusinessName] [nvarchar](50) NULL,
	[GroupNum] [int] NULL,
	[SignaturePath] [nvarchar](500) NULL,
 CONSTRAINT [PK_WF_Task_Step] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WF_Template]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WF_Template](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WFTmpCode] [nvarchar](50) NULL,
	[WFTmpName] [nvarchar](50) NULL,
	[WFTmpCreateDate] [datetime] NULL,
	[nodes] [ntext] NULL,
	[lines] [ntext] NULL,
	[FirstStepID] [nvarchar](50) NULL,
	[FlowType] [char](1) NULL,
	[InspSourceCode] [nvarchar](50) NULL,
	[WFTmpSts] [char](1) NULL,
	[Remark] [nvarchar](1000) NULL,
 CONSTRAINT [PK_WF_Template] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Arrived]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Arrived](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArrivedCode] [nvarchar](50) NOT NULL,
	[OrderNum] [nvarchar](50) NULL,
	[ArrivedSts] [int] NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[ArrivedDate] [datetime] NULL,
	[AcceptPCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Arrived] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_ArrivedDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_ArrivedDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[ArrivedQty] [decimal](22, 6) NULL,
	[ArrivedPrice] [decimal](22, 6) NULL,
	[ArrivedTotal] [decimal](22, 6) NULL,
	[Manufacture] [nvarchar](50) NULL,
	[_ArrivedCode] [nvarchar](50) NULL,
	[ProductDate] [datetime] NULL,
	[ValidDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_ArrivedDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_CustomerReturn]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_CustomerReturn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerReCode] [nvarchar](50) NOT NULL,
	[_DeliveryCode] [nvarchar](50) NULL,
	[CustomerReSts] [int] NULL,
	[ReturnDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_CustomerReturn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_CustomerReturnDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_CustomerReturnDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[WhCode] [nvarchar](50) NULL,
	[CustomerReQty] [decimal](22, 6) NULL,
	[CustomerRePrice] [decimal](22, 6) NULL,
	[CustomerReTotal] [decimal](22, 6) NULL,
	[ReturnReason] [nvarchar](500) NULL,
	[_CustomerReCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_CustomerReturnDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Delivery]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Delivery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryCode] [nvarchar](50) NOT NULL,
	[OrderNum] [nvarchar](50) NULL,
	[DeliverySts] [int] NULL,
	[SendPCode] [nvarchar](50) NULL,
	[SendDate] [datetime] NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[SendType] [int] NULL,
	[AWBNum] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Delivery] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_DeliveryDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_DeliveryDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[DeliveryQty] [decimal](22, 6) NULL,
	[_DeliveryCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_DeliveryDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_HY_HeJinBangDB]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_HY_HeJinBangDB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pihao] [nvarchar](100) NULL,
	[adddate] [datetime] NULL,
	[jinglidu] [nvarchar](50) NULL,
	[jiazha] [nvarchar](50) NULL,
	[liewen] [nvarchar](50) NULL,
	[shusong] [nvarchar](50) NULL,
	[qikong] [nvarchar](50) NULL,
	[guangliangjing] [nvarchar](50) NULL,
	[yumaojing] [nvarchar](50) NULL,
	[guige] [nvarchar](100) NULL,
	[state] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
	[huayanyuan] [nvarchar](50) NULL,
	[shenheyuan] [nvarchar](50) NULL,
	[companyuid] [nvarchar](50) NULL,
	[jieguo] [nvarchar](50) NULL,
	[jilengceng] [nvarchar](500) NULL,
	[sortname] [nvarchar](50) NULL,
	[dtime] [datetime] NULL,
 CONSTRAINT [PK_WM_HY_HeJinBangDB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_In]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_In](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InCode] [nvarchar](50) NOT NULL,
	[InSts] [int] NULL,
	[InType] [int] NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[InDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_In] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_InApply]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_InApply](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ApplyCode] [nvarchar](50) NOT NULL,
	[ApplyDCode] [nvarchar](50) NULL,
	[ApplyPCode] [nvarchar](50) NULL,
	[ApplySts] [int] NULL,
	[ApplyDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_InApply] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_InApplyDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_InApplyDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[ApplyQty] [decimal](22, 6) NULL,
	[ApplyPrice] [decimal](22, 6) NULL,
	[ApplyTotal] [decimal](22, 6) NULL,
	[_ApplyCode] [nvarchar](50) NULL,
	[ProductDate] [datetime] NULL,
	[ValidDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[Manufacturer] [nvarchar](200) NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_InApplyDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_InDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_InDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QRCode] [ntext] NULL,
	[BatchNo] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[InQty] [decimal](22, 6) NULL,
	[ValidQty] [decimal](22, 6) NULL,
	[InPrice] [decimal](22, 6) NULL,
	[InTotal] [decimal](22, 6) NULL,
	[ValidTotal] [decimal](22, 6) NULL,
	[WhCode] [nvarchar](50) NULL,
	[_InCode] [nvarchar](50) NULL,
	[Manufacture] [nvarchar](50) NULL,
	[ProductDate] [datetime] NULL,
	[ValidDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[Ncvbillcode] [nvarchar](50) NULL,
	[PurPose] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_InDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_MatPlan]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_MatPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlanCode] [nvarchar](50) NULL,
	[PlanDCode] [nvarchar](50) NULL,
	[PlanDate] [datetime] NULL,
	[PlanPCode] [nvarchar](50) NULL,
	[PlanSts] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_MatPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_MatPlanDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_MatPlanDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_PlanCode] [int] NULL,
	[MatCode] [nvarchar](50) NULL,
	[RefPrice] [decimal](22, 6) NULL,
	[PlanCount] [decimal](22, 6) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_MatPlanDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Out]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Out](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OutCode] [nvarchar](50) NOT NULL,
	[OutSts] [int] NULL,
	[OutType] [int] NULL,
	[OutDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputDCode] [nvarchar](50) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Out] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_OutDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_OutDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[_OutCode] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[OutQty] [decimal](22, 6) NULL,
	[OutPrice] [decimal](22, 6) NULL,
	[OutTotal] [decimal](22, 6) NULL,
	[WhCode] [nvarchar](50) NULL,
	[Inid] [int] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_OutDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Require]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Require](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequireCode] [nvarchar](50) NOT NULL,
	[RequireSts] [int] NULL,
	[RequireDCode] [nvarchar](50) NULL,
	[RequirePCode] [nvarchar](50) NULL,
	[RequireDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Require] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_RequireDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_RequireDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[RequireQty] [decimal](22, 6) NULL,
	[_RequireCode] [nvarchar](50) NULL,
	[UsePath] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[SortType] [nvarchar](50) NULL,
	[PurPose] [nvarchar](500) NULL,
	[BatchNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_RequireDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Return]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Return](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReturnCode] [nvarchar](50) NOT NULL,
	[_RequireCode] [nvarchar](50) NULL,
	[ReturnSts] [int] NULL,
	[ReturnDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[ReturnPCode] [nvarchar](50) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Return] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_ReturnDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_ReturnDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[_ReturnCode] [nvarchar](50) NULL,
	[MatCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[WhCode] [nvarchar](50) NULL,
	[ReturnQty] [decimal](22, 6) NULL,
	[Remark] [nvarchar](500) NULL,
	[ReturnReason] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_ReturnDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_ReturnOut]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_ReturnOut](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReOutCode] [nvarchar](50) NOT NULL,
	[_ArrivedCode] [nvarchar](50) NULL,
	[ReturnDate] [datetime] NULL,
	[ReOutSts] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_ReturnOut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_ReturnOutDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_ReturnOutDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[WhCode] [nvarchar](50) NULL,
	[ReOutQty] [decimal](22, 6) NULL,
	[ReOutReason] [nvarchar](500) NULL,
	[_ReOutCode] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_ReturnOutDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Stock]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Stock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NULL,
	[WhCode] [nvarchar](50) NULL,
	[InQty] [decimal](14, 4) NULL,
	[ValidQty] [decimal](14, 4) NULL,
	[Inprice] [decimal](14, 4) NULL,
	[Batch] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Transfer]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Transfer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransCode] [nvarchar](50) NULL,
	[TransDate] [datetime] NULL,
	[TransSts] [int] NULL,
	[SourceWh] [nvarchar](50) NULL,
	[TargetWh] [nvarchar](50) NULL,
	[TransPCode] [nvarchar](50) NULL,
	[AcceptPCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_Transfer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_TransferDtl]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_TransferDtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatCode] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[WhCode] [nvarchar](50) NULL,
	[TransQty] [decimal](22, 6) NULL,
	[TransTotal] [decimal](22, 6) NULL,
	[TransPrice] [decimal](22, 6) NULL,
	[TransReason] [nvarchar](500) NULL,
	[_TransCode] [nvarchar](50) NOT NULL,
	[_InDtlID] [int] NULL,
	[ProductDate] [datetime] NULL,
	[ValidDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_t_WM_TransferDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WM_Warehouse]    Script Date: 2020/3/12 12:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WM_Warehouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseCode] [nvarchar](50) NOT NULL,
	[WarehouseName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[WarehouseSts] [nvarchar](50) NULL,
	[WarehouseType] [int] NULL,
	[DutyPCode] [nvarchar](50) NULL,
	[PCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[DelFlag] [char](1) NULL,
	[InputCode] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[ModifyCode] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[CorpCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_WM_WAREHOUSE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SM_Attachment] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_Department] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_MessageInfo] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_MessageInfoDtl] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_Person] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_ReceiverGroup] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_Role] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_SystemResource] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[SM_SystemResourceDtl] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_ArrangePeriod] ADD  CONSTRAINT [DF_t_BD_ArrangePeriod_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_ArrangeResult] ADD  CONSTRAINT [DF_t_BD_ArrangeResult_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_Dict] ADD  CONSTRAINT [DF_t_BD_Dict_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_DictDtl] ADD  CONSTRAINT [DF_t_BD_DictDtl_SeqNo]  DEFAULT ((0)) FOR [SeqNo]
GO
ALTER TABLE [dbo].[t_BD_DictDtl] ADD  CONSTRAINT [DF_t_BD_DictDtl_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_Material] ADD  CONSTRAINT [DF_t_BD_Material_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_MaterialAttr] ADD  CONSTRAINT [DF_t_BD_MaterialAttr_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_MaterialRelType] ADD  CONSTRAINT [DF_t_BD_MaterialRelType_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_Member] ADD  CONSTRAINT [DF_t_BD_Member_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_Supplier] ADD  CONSTRAINT [DF_t_BD_Supplier_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_SupplierMaterialDtl] ADD  CONSTRAINT [DF_t_BD_SupplierMaterialDtl_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_Team] ADD  CONSTRAINT [DF_t_BD_Team_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_Unit] ADD  CONSTRAINT [DF_t_BD_Unit_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_UnitConv] ADD  CONSTRAINT [DF_t_BD_UnitConv_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_UnitDtl] ADD  CONSTRAINT [DF_t_BD_UnitDtl_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_UnitDtlConv] ADD  CONSTRAINT [DF_t_BD_UnitDtlConv_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_BD_WorkShift] ADD  CONSTRAINT [DF_t_BD_Trains_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_EE_NetDefine] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_EE_NetNode] ADD  DEFAULT ('0') FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_Dispatch] ADD  CONSTRAINT [DF_t_PC_Dispatch_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_Dispatch] ADD  CONSTRAINT [DF_t_PC_Dispatch_FlowSts]  DEFAULT ((0)) FOR [FlowSts]
GO
ALTER TABLE [dbo].[t_PC_DisptMessage] ADD  CONSTRAINT [DF_t_PC_DisptMessage_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_DisptProcedure] ADD  CONSTRAINT [DF_t_PC_DisptProcedure_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_Instruction] ADD  CONSTRAINT [DF_t_PC_Instruction_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_Instruction] ADD  CONSTRAINT [DF_t_PC_Instruction_InsSts]  DEFAULT ((0)) FOR [InsSts]
GO
ALTER TABLE [dbo].[t_PC_InstructionRcv] ADD  CONSTRAINT [DF_t_PC_InstructionRcv_IsConfirm]  DEFAULT ((0)) FOR [IsConfirm]
GO
ALTER TABLE [dbo].[t_PC_InstructionRcv] ADD  CONSTRAINT [DF_t_PC_InstructionRcv_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[t_PC_Meeting] ADD  CONSTRAINT [DF_t_PC_Meeting_MeetingSts]  DEFAULT ((0)) FOR [MeetingSts]
GO
ALTER TABLE [dbo].[t_PC_Meeting] ADD  CONSTRAINT [DF_t_PC_Meeting_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_MeetingDtl] ADD  CONSTRAINT [DF_t_PC_MeetingDtl_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_ReceiverGroup] ADD  CONSTRAINT [DF_t_PC_ReceiverGroup_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_ReceiverGroupDtl] ADD  CONSTRAINT [DF_t_PC_ReceiverGroupDtl_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
ALTER TABLE [dbo].[t_PC_ShiftHandover] ADD  CONSTRAINT [DF_t_PC_ShiftHandover_HandoverSts]  DEFAULT ((0)) FOR [HandoverSts]
GO
ALTER TABLE [dbo].[t_PC_ShiftHandover] ADD  CONSTRAINT [DF_t_PC_ShiftHandover_DelFlag]  DEFAULT ((0)) FOR [DelFlag]
GO
