CREATE PROC usp_WEB_s_Locations_Insert

@LocationGUID uniqueidentifier,
@Location nvarchar(255),
@Description nvarchar(255),
@Active bit,
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

INSERT INTO s_Locations (LocationGUID,Location,Description,Active,ChangedBy,ChangedOn) VALUES (@LocationGUID,@Location,@Description,@Active,@ChangedBy,@ChangedOn)

END

GO

CREATE PROC usp_WEB_s_Locations_Update

@LocationGUID uniqueidentifier,
@Location nvarchar(255),
@Description nvarchar(255),
@Active bit,
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

UPDATE s_Locations SET Location=@Location,
Description=@Description,
Active=@Active,
ChangedBy=@ChangedBy,
ChangedOn=@ChangedOn WHERE LocationGUID=@LocationGUID

END

GO




CREATE PROC usp_WEB_s_NameValue_Insert

@Name nvarchar(100),
@Value nvarchar(100),
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

INSERT INTO s_NameValue (Name,Value,ChangedBy,ChangedOn) VALUES (@Name,@Value,@ChangedBy,@ChangedOn)

END

GO

CREATE PROC usp_WEB_s_NameValue_Update

@Name nvarchar(100),
@Value nvarchar(100),
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

UPDATE s_NameValue SET Value=@Value,
ChangedBy=@ChangedBy,
ChangedOn=@ChangedOn WHERE Name=@Name

END

GO




CREATE PROC usp_WEB_s_People_Insert

@GUID uniqueidentifier,
@Username nvarchar(50),
@Title nvarchar(20),
@GivenName nvarchar(50),
@Surname nvarchar(100),
@Workphone nvarchar(20),
@Homephone nvarchar(20),
@Mobile nvarchar(20),
@Email nvarchar(150),
@BirthDate datetime,
@GenderClassGUID uniqueidentifier,
@EmploymentClassID int,
@Comments ntext(1073741823),
@OrganisationGUID uniqueidentifier,
@EmployeeID nvarchar(20),
@OnsiteContact nvarchar(50),
@OffsiteContact nvarchar(50),
@CommencedOn datetime,
@CeasedOn datetime,
@SupervisorGUID uniqueidentifier,
@NextofKin nvarchar(50),
@NextofKinPhone nvarchar(50),
@StaffContractor nvarchar(1),
@Active bit,
@ChangedBy nvarchar(50),
@ChangedOn datetime,
@PhotoID int,
@MineHealthNumber nvarchar(20)

AS

BEGIN

INSERT INTO s_People (GUID,Username,Title,GivenName,Surname,Workphone,Homephone,Mobile,Email,BirthDate,GenderClassGUID,EmploymentClassID,Comments,OrganisationGUID,EmployeeID,OnsiteContact,OffsiteContact,CommencedOn,CeasedOn,SupervisorGUID,NextofKin,NextofKinPhone,StaffContractor,Active,ChangedBy,ChangedOn,PhotoID,MineHealthNumber) VALUES (@GUID,@Username,@Title,@GivenName,@Surname,@Workphone,@Homephone,@Mobile,@Email,@BirthDate,@GenderClassGUID,@EmploymentClassID,@Comments,@OrganisationGUID,@EmployeeID,@OnsiteContact,@OffsiteContact,@CommencedOn,@CeasedOn,@SupervisorGUID,@NextofKin,@NextofKinPhone,@StaffContractor,@Active,@ChangedBy,@ChangedOn,@PhotoID,@MineHealthNumber)

END

GO

CREATE PROC usp_WEB_s_People_Update

@GUID uniqueidentifier,
@Username nvarchar(50),
@Title nvarchar(20),
@GivenName nvarchar(50),
@Surname nvarchar(100),
@Workphone nvarchar(20),
@Homephone nvarchar(20),
@Mobile nvarchar(20),
@Email nvarchar(150),
@BirthDate datetime,
@GenderClassGUID uniqueidentifier,
@EmploymentClassID int,
@Comments ntext(1073741823),
@OrganisationGUID uniqueidentifier,
@EmployeeID nvarchar(20),
@OnsiteContact nvarchar(50),
@OffsiteContact nvarchar(50),
@CommencedOn datetime,
@CeasedOn datetime,
@SupervisorGUID uniqueidentifier,
@NextofKin nvarchar(50),
@NextofKinPhone nvarchar(50),
@StaffContractor nvarchar(1),
@Active bit,
@ChangedBy nvarchar(50),
@ChangedOn datetime,
@PhotoID int,
@MineHealthNumber nvarchar(20)

AS

BEGIN

UPDATE s_People SET Username=@Username,
Title=@Title,
GivenName=@GivenName,
Surname=@Surname,
Workphone=@Workphone,
Homephone=@Homephone,
Mobile=@Mobile,
Email=@Email,
BirthDate=@BirthDate,
GenderClassGUID=@GenderClassGUID,
EmploymentClassID=@EmploymentClassID,
Comments=@Comments,
OrganisationGUID=@OrganisationGUID,
EmployeeID=@EmployeeID,
OnsiteContact=@OnsiteContact,
OffsiteContact=@OffsiteContact,
CommencedOn=@CommencedOn,
CeasedOn=@CeasedOn,
SupervisorGUID=@SupervisorGUID,
NextofKin=@NextofKin,
NextofKinPhone=@NextofKinPhone,
StaffContractor=@StaffContractor,
Active=@Active,
ChangedBy=@ChangedBy,
ChangedOn=@ChangedOn,
PhotoID=@PhotoID,
MineHealthNumber=@MineHealthNumber WHERE GUID=@GUID

END

GO




CREATE PROC usp_WEB_s_Projects_Insert

@ProjGUID uniqueidentifier,
@ProjectName nvarchar(255),
@ProjectNumber nvarchar(255),
@Description nvarchar(255),
@Client nvarchar(255),
@ClientProject nvarchar(255),
@LocationGUID uniqueidentifier,
@StartDate datetime,
@EndDatePlanned datetime,
@EndDateActual datetime,
@Active bit,
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

INSERT INTO s_Projects (ProjGUID,ProjectName,ProjectNumber,Description,Client,ClientProject,LocationGUID,StartDate,EndDatePlanned,EndDateActual,Active,ChangedBy,ChangedOn) VALUES (@ProjGUID,@ProjectName,@ProjectNumber,@Description,@Client,@ClientProject,@LocationGUID,@StartDate,@EndDatePlanned,@EndDateActual,@Active,@ChangedBy,@ChangedOn)

END

GO

CREATE PROC usp_WEB_s_Projects_Update

@ProjGUID uniqueidentifier,
@ProjectName nvarchar(255),
@ProjectNumber nvarchar(255),
@Description nvarchar(255),
@Client nvarchar(255),
@ClientProject nvarchar(255),
@LocationGUID uniqueidentifier,
@StartDate datetime,
@EndDatePlanned datetime,
@EndDateActual datetime,
@Active bit,
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

UPDATE s_Projects SET ProjectName=@ProjectName,
ProjectNumber=@ProjectNumber,
Description=@Description,
Client=@Client,
ClientProject=@ClientProject,
LocationGUID=@LocationGUID,
StartDate=@StartDate,
EndDatePlanned=@EndDatePlanned,
EndDateActual=@EndDateActual,
Active=@Active,
ChangedBy=@ChangedBy,
ChangedOn=@ChangedOn WHERE ProjGUID=@ProjGUID

END

GO




CREATE PROC usp_WEB_s_SecurityLevels_Insert

@GUID uniqueidentifier,
@SecurityLevel int,
@Name nvarchar(50),
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

INSERT INTO s_SecurityLevels (GUID,SecurityLevel,Name,ChangedBy,ChangedOn) VALUES (@GUID,@SecurityLevel,@Name,@ChangedBy,@ChangedOn)

END

GO

CREATE PROC usp_WEB_s_SecurityLevels_Update

@GUID uniqueidentifier,
@SecurityLevel int,
@Name nvarchar(50),
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

UPDATE s_SecurityLevels SET SecurityLevel=@SecurityLevel,
Name=@Name,
ChangedBy=@ChangedBy,
ChangedOn=@ChangedOn WHERE GUID=@GUID

END

GO




CREATE PROC usp_WEB_s_WBS_Insert

@WBSGUID uniqueidentifier,
@ProjGUID uniqueidentifier,
@Level int,
@SortOrder int,
@Description nvarchar(255),
@DueDate datetime,
@CompletedDate datetime,
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

INSERT INTO s_WBS (WBSGUID,ProjGUID,Level,SortOrder,Description,DueDate,CompletedDate,ChangedBy,ChangedOn) VALUES (@WBSGUID,@ProjGUID,@Level,@SortOrder,@Description,@DueDate,@CompletedDate,@ChangedBy,@ChangedOn)

END

GO

CREATE PROC usp_WEB_s_WBS_Update

@WBSGUID uniqueidentifier,
@ProjGUID uniqueidentifier,
@Level int,
@SortOrder int,
@Description nvarchar(255),
@DueDate datetime,
@CompletedDate datetime,
@ChangedBy nvarchar(50),
@ChangedOn datetime

AS

BEGIN

UPDATE s_WBS SET ProjGUID=@ProjGUID,
Level=@Level,
SortOrder=@SortOrder,
Description=@Description,
DueDate=@DueDate,
CompletedDate=@CompletedDate,
ChangedBy=@ChangedBy,
ChangedOn=@ChangedOn WHERE WBSGUID=@WBSGUID

END

GO





