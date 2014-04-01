use [KG-IMS]


ALTER TABLE [s_People]
ADD [RoleGUID] [uniqueidentifier] NULL
go

ALTER TABLE [dbo].[s_People]  WITH CHECK ADD  CONSTRAINT [s_People_Roles_FK00] FOREIGN KEY([RoleGUID])
REFERENCES [dbo].[s_SecurityLevels] ([GUID])
GO

ALTER TABLE [dbo].[s_People] CHECK CONSTRAINT [s_People_Roles_FK00]
GO
