USE [KG-IMS]
GO

/****** Object:  View [dbo].[v_PeopleRole]    Script Date: 31/03/2014 10:59:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[v_PeopleRole]
AS
SELECT        dbo.s_People.GUID, dbo.s_People.Username, dbo.s_People.Title, dbo.s_People.GivenName, dbo.s_People.Surname, dbo.s_People.Active, 
                         dbo.s_SecurityLevels.SecurityLevel, dbo.s_SecurityLevels.Name
FROM            dbo.s_People INNER JOIN
                         dbo.s_SecurityLevels ON dbo.s_People.RoleGUID = dbo.s_SecurityLevels.GUID

GO
