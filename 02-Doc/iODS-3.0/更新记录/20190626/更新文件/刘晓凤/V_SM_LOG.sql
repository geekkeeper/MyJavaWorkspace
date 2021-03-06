USE [HiODSDB]
GO
/****** Object:  View [dbo].[V_SM_Log]    Script Date: 2019/6/26 19:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_SM_Log]
AS
SELECT   A.ID, A.strOperater, A.strOperateTime, A.strLabelName, A.strLabelDescribe, A.nLogSource, A.nStatus, 
                CASE WHEN A.nLogSource = 1 THEN 'iODS' WHEN A.nLogSource = 2 THEN '系统日志' WHEN A.nLogSource = 3 THEN 'DCS'
                 ELSE '' END AS strLogSourceName, A.strOperateRoute, CASE WHEN A.nLogSource = 1 THEN ISNULL(B_1.Title, N'') 
                WHEN A.nLogSource = 2 THEN ISNULL(B_1.Title, N'') WHEN A.nLogSource = 3 THEN '' END AS strOperateRouteName, 
                CASE WHEN A.nLogSource = 3 THEN 0 ELSE A.nOperateContentKey END AS nOperateContentKey, 
                CASE WHEN A.nLogSource = 1 AND nStatus = 0 AND LEN(A.strContent) = 0 THEN '失败' WHEN A.nLogSource = 1 AND 
                nStatus = 1 AND (A.nOperateContentKey = 11 OR
                A.nOperateContentKey = 12) THEN ('由' + A.strPreContent + '改为' + A.strafterContent) WHEN A.nLogSource = 1 AND 
                nStatus = 1 AND A.nOperateContentKey = 10 THEN ('置为' + A.strafterContent + ',脉冲时间为' + A.strPreContent + '毫秒') 
                ELSE A.strContent END AS strContent, 
                CASE WHEN A.nLogSource = 3 THEN '其他' ELSE C.strOperateContent END AS strOperateContent, 
                CASE WHEN LEN(A.strArea) > 0 THEN A.strArea ELSE ISNULL(D .strArea, N'') END AS strArea, ISNULL(D.strDevice, N'') 
                AS strDevice, ISNULL(D.strUnit, N'') AS strUnit
FROM      dbo.SM_Log AS A LEFT OUTER JOIN
                    (SELECT   ID, Code, PCode, OrderNo, Title, EnTitle, DelFlag, IsSysMenu, '' AS Type, '' AS ResourceUrl, 
                                     '' AS Parameter, IsHide, '' AS ExternalNetwork
                     FROM      dbo.SM_SystemResource
                     UNION
                     SELECT   ID, Code, SystemResourceCode AS PCode, OrderNo, Title, EnTitle, DelFlag, IsSysMenu, '' AS Type, 
                                     ResourceUrl, Parameter, IsHide, '' AS ExternalNetwork
                     FROM      dbo.SM_SystemResourceDtl
                     UNION
                     SELECT   a.ID, a.Code, a.SystemResourceCode AS PCode, a.OrderNo, a.Title, a.EnTitle, a.DelFlag, a.IsSysMenu, 
                                     b.type, b.path AS ResourceUrl, a.Parameter, a.IsHide, a.ExternalNetwork
                     FROM      dbo.SM_SystemResourceRmisDtl AS a LEFT OUTER JOIN
                                     dbo.t_deply AS b ON a.DeployID = b.Id) AS B_1 ON A.strOperateRoute = B_1.Code AND 
                A.nLogSource = 2 LEFT OUTER JOIN
                dbo.SM_OperateContent AS C ON C.nOperateContentKey = A.nOperateContentKey LEFT OUTER JOIN
                dbo.SM_ProjectTag AS D ON D.strName = A.strLabelName
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[3] 2[54] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 146
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B_1"
            Begin Extent = 
               Top = 6
               Left = 258
               Bottom = 146
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 481
               Bottom = 127
               Right = 691
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 729
               Bottom = 146
               Right = 904
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_SM_Log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_SM_Log'
GO
