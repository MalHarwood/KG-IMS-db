public void s_Locations_Insert(string strLocationGUID, string strLocation, string strDescription, string strActive, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_Locations_Insert");
db.AddParam(SqlDbType.VarChar, "LocationGUID", strLocationGUID.ToString());
db.AddParam(SqlDbType.VarChar, "Location", strLocation.ToString());
db.AddParam(SqlDbType.VarChar, "Description", strDescription.ToString());
db.AddParam(SqlDbType.VarChar, "Active", strActive.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_Locations_Update(string strLocationGUID, string strLocation, string strDescription, string strActive, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_Locations_Update");
db.AddParam(SqlDbType.VarChar, "LocationGUID", strLocationGUID.ToString());
db.AddParam(SqlDbType.VarChar, "Location", strLocation.ToString());
db.AddParam(SqlDbType.VarChar, "Description", strDescription.ToString());
db.AddParam(SqlDbType.VarChar, "Active", strActive.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_NameValue_Insert(string strName, string strValue, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_NameValue_Insert");
db.AddParam(SqlDbType.VarChar, "Name", strName.ToString());
db.AddParam(SqlDbType.VarChar, "Value", strValue.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_NameValue_Update(string strName, string strValue, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_NameValue_Update");
db.AddParam(SqlDbType.VarChar, "Name", strName.ToString());
db.AddParam(SqlDbType.VarChar, "Value", strValue.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_People_Insert(string strGUID, string strUsername, string strTitle, string strGivenName, string strSurname, string strWorkphone, string strHomephone, string strMobile, string strEmail, DateTime dtBirthDate, string strGenderClassGUID, int intEmploymentClassID, string strComments, string strOrganisationGUID, string strEmployeeID, string strOnsiteContact, string strOffsiteContact, DateTime dtCommencedOn, DateTime dtCeasedOn, string strSupervisorGUID, string strNextofKin, string strNextofKinPhone, string strStaffContractor, string strActive, string strChangedBy, DateTime dtChangedOn, int intPhotoID, string strMineHealthNumber){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_People_Insert");
db.AddParam(SqlDbType.VarChar, "GUID", strGUID.ToString());
db.AddParam(SqlDbType.VarChar, "Username", strUsername.ToString());
db.AddParam(SqlDbType.VarChar, "Title", strTitle.ToString());
db.AddParam(SqlDbType.VarChar, "GivenName", strGivenName.ToString());
db.AddParam(SqlDbType.VarChar, "Surname", strSurname.ToString());
db.AddParam(SqlDbType.VarChar, "Workphone", strWorkphone.ToString());
db.AddParam(SqlDbType.VarChar, "Homephone", strHomephone.ToString());
db.AddParam(SqlDbType.VarChar, "Mobile", strMobile.ToString());
db.AddParam(SqlDbType.VarChar, "Email", strEmail.ToString());
db.AddParam(SqlDbType.DateTime, "BirthDate", dtBirthDate.ToString());
db.AddParam(SqlDbType.VarChar, "GenderClassGUID", strGenderClassGUID.ToString());
db.AddParam(SqlDbType.Int, "EmploymentClassID", intEmploymentClassID.ToString());
db.AddParam(SqlDbType.VarChar, "Comments", strComments.ToString());
db.AddParam(SqlDbType.VarChar, "OrganisationGUID", strOrganisationGUID.ToString());
db.AddParam(SqlDbType.VarChar, "EmployeeID", strEmployeeID.ToString());
db.AddParam(SqlDbType.VarChar, "OnsiteContact", strOnsiteContact.ToString());
db.AddParam(SqlDbType.VarChar, "OffsiteContact", strOffsiteContact.ToString());
db.AddParam(SqlDbType.DateTime, "CommencedOn", dtCommencedOn.ToString());
db.AddParam(SqlDbType.DateTime, "CeasedOn", dtCeasedOn.ToString());
db.AddParam(SqlDbType.VarChar, "SupervisorGUID", strSupervisorGUID.ToString());
db.AddParam(SqlDbType.VarChar, "NextofKin", strNextofKin.ToString());
db.AddParam(SqlDbType.VarChar, "NextofKinPhone", strNextofKinPhone.ToString());
db.AddParam(SqlDbType.VarChar, "StaffContractor", strStaffContractor.ToString());
db.AddParam(SqlDbType.VarChar, "Active", strActive.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());
db.AddParam(SqlDbType.Int, "PhotoID", intPhotoID.ToString());
db.AddParam(SqlDbType.VarChar, "MineHealthNumber", strMineHealthNumber.ToString());

db.Execute();
}

public void s_People_Update(string strGUID, string strUsername, string strTitle, string strGivenName, string strSurname, string strWorkphone, string strHomephone, string strMobile, string strEmail, DateTime dtBirthDate, string strGenderClassGUID, int intEmploymentClassID, string strComments, string strOrganisationGUID, string strEmployeeID, string strOnsiteContact, string strOffsiteContact, DateTime dtCommencedOn, DateTime dtCeasedOn, string strSupervisorGUID, string strNextofKin, string strNextofKinPhone, string strStaffContractor, string strActive, string strChangedBy, DateTime dtChangedOn, int intPhotoID, string strMineHealthNumber){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_People_Update");
db.AddParam(SqlDbType.VarChar, "GUID", strGUID.ToString());
db.AddParam(SqlDbType.VarChar, "Username", strUsername.ToString());
db.AddParam(SqlDbType.VarChar, "Title", strTitle.ToString());
db.AddParam(SqlDbType.VarChar, "GivenName", strGivenName.ToString());
db.AddParam(SqlDbType.VarChar, "Surname", strSurname.ToString());
db.AddParam(SqlDbType.VarChar, "Workphone", strWorkphone.ToString());
db.AddParam(SqlDbType.VarChar, "Homephone", strHomephone.ToString());
db.AddParam(SqlDbType.VarChar, "Mobile", strMobile.ToString());
db.AddParam(SqlDbType.VarChar, "Email", strEmail.ToString());
db.AddParam(SqlDbType.DateTime, "BirthDate", dtBirthDate.ToString());
db.AddParam(SqlDbType.VarChar, "GenderClassGUID", strGenderClassGUID.ToString());
db.AddParam(SqlDbType.Int, "EmploymentClassID", intEmploymentClassID.ToString());
db.AddParam(SqlDbType.VarChar, "Comments", strComments.ToString());
db.AddParam(SqlDbType.VarChar, "OrganisationGUID", strOrganisationGUID.ToString());
db.AddParam(SqlDbType.VarChar, "EmployeeID", strEmployeeID.ToString());
db.AddParam(SqlDbType.VarChar, "OnsiteContact", strOnsiteContact.ToString());
db.AddParam(SqlDbType.VarChar, "OffsiteContact", strOffsiteContact.ToString());
db.AddParam(SqlDbType.DateTime, "CommencedOn", dtCommencedOn.ToString());
db.AddParam(SqlDbType.DateTime, "CeasedOn", dtCeasedOn.ToString());
db.AddParam(SqlDbType.VarChar, "SupervisorGUID", strSupervisorGUID.ToString());
db.AddParam(SqlDbType.VarChar, "NextofKin", strNextofKin.ToString());
db.AddParam(SqlDbType.VarChar, "NextofKinPhone", strNextofKinPhone.ToString());
db.AddParam(SqlDbType.VarChar, "StaffContractor", strStaffContractor.ToString());
db.AddParam(SqlDbType.VarChar, "Active", strActive.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());
db.AddParam(SqlDbType.Int, "PhotoID", intPhotoID.ToString());
db.AddParam(SqlDbType.VarChar, "MineHealthNumber", strMineHealthNumber.ToString());

db.Execute();
}

public void s_Projects_Insert(string strProjGUID, string strProjectName, string strProjectNumber, string strDescription, string strClient, string strClientProject, string strLocationGUID, DateTime dtStartDate, DateTime dtEndDatePlanned, DateTime dtEndDateActual, string strActive, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_Projects_Insert");
db.AddParam(SqlDbType.VarChar, "ProjGUID", strProjGUID.ToString());
db.AddParam(SqlDbType.VarChar, "ProjectName", strProjectName.ToString());
db.AddParam(SqlDbType.VarChar, "ProjectNumber", strProjectNumber.ToString());
db.AddParam(SqlDbType.VarChar, "Description", strDescription.ToString());
db.AddParam(SqlDbType.VarChar, "Client", strClient.ToString());
db.AddParam(SqlDbType.VarChar, "ClientProject", strClientProject.ToString());
db.AddParam(SqlDbType.VarChar, "LocationGUID", strLocationGUID.ToString());
db.AddParam(SqlDbType.DateTime, "StartDate", dtStartDate.ToString());
db.AddParam(SqlDbType.DateTime, "EndDatePlanned", dtEndDatePlanned.ToString());
db.AddParam(SqlDbType.DateTime, "EndDateActual", dtEndDateActual.ToString());
db.AddParam(SqlDbType.VarChar, "Active", strActive.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_Projects_Update(string strProjGUID, string strProjectName, string strProjectNumber, string strDescription, string strClient, string strClientProject, string strLocationGUID, DateTime dtStartDate, DateTime dtEndDatePlanned, DateTime dtEndDateActual, string strActive, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_Projects_Update");
db.AddParam(SqlDbType.VarChar, "ProjGUID", strProjGUID.ToString());
db.AddParam(SqlDbType.VarChar, "ProjectName", strProjectName.ToString());
db.AddParam(SqlDbType.VarChar, "ProjectNumber", strProjectNumber.ToString());
db.AddParam(SqlDbType.VarChar, "Description", strDescription.ToString());
db.AddParam(SqlDbType.VarChar, "Client", strClient.ToString());
db.AddParam(SqlDbType.VarChar, "ClientProject", strClientProject.ToString());
db.AddParam(SqlDbType.VarChar, "LocationGUID", strLocationGUID.ToString());
db.AddParam(SqlDbType.DateTime, "StartDate", dtStartDate.ToString());
db.AddParam(SqlDbType.DateTime, "EndDatePlanned", dtEndDatePlanned.ToString());
db.AddParam(SqlDbType.DateTime, "EndDateActual", dtEndDateActual.ToString());
db.AddParam(SqlDbType.VarChar, "Active", strActive.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_SecurityLevels_Insert(string strGUID, int intSecurityLevel, string strName, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_SecurityLevels_Insert");
db.AddParam(SqlDbType.VarChar, "GUID", strGUID.ToString());
db.AddParam(SqlDbType.Int, "SecurityLevel", intSecurityLevel.ToString());
db.AddParam(SqlDbType.VarChar, "Name", strName.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_SecurityLevels_Update(string strGUID, int intSecurityLevel, string strName, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_SecurityLevels_Update");
db.AddParam(SqlDbType.VarChar, "GUID", strGUID.ToString());
db.AddParam(SqlDbType.Int, "SecurityLevel", intSecurityLevel.ToString());
db.AddParam(SqlDbType.VarChar, "Name", strName.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_WBS_Insert(string strWBSGUID, string strProjGUID, int intLevel, int intSortOrder, string strDescription, DateTime dtDueDate, DateTime dtCompletedDate, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_WBS_Insert");
db.AddParam(SqlDbType.VarChar, "WBSGUID", strWBSGUID.ToString());
db.AddParam(SqlDbType.VarChar, "ProjGUID", strProjGUID.ToString());
db.AddParam(SqlDbType.Int, "Level", intLevel.ToString());
db.AddParam(SqlDbType.Int, "SortOrder", intSortOrder.ToString());
db.AddParam(SqlDbType.VarChar, "Description", strDescription.ToString());
db.AddParam(SqlDbType.DateTime, "DueDate", dtDueDate.ToString());
db.AddParam(SqlDbType.DateTime, "CompletedDate", dtCompletedDate.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}

public void s_WBS_Update(string strWBSGUID, string strProjGUID, int intLevel, int intSortOrder, string strDescription, DateTime dtDueDate, DateTime dtCompletedDate, string strChangedBy, DateTime dtChangedOn){

clsDBTransaction db = new clsDBTransaction("usp_WEB_s_WBS_Update");
db.AddParam(SqlDbType.VarChar, "WBSGUID", strWBSGUID.ToString());
db.AddParam(SqlDbType.VarChar, "ProjGUID", strProjGUID.ToString());
db.AddParam(SqlDbType.Int, "Level", intLevel.ToString());
db.AddParam(SqlDbType.Int, "SortOrder", intSortOrder.ToString());
db.AddParam(SqlDbType.VarChar, "Description", strDescription.ToString());
db.AddParam(SqlDbType.DateTime, "DueDate", dtDueDate.ToString());
db.AddParam(SqlDbType.DateTime, "CompletedDate", dtCompletedDate.ToString());
db.AddParam(SqlDbType.VarChar, "ChangedBy", strChangedBy.ToString());
db.AddParam(SqlDbType.DateTime, "ChangedOn", dtChangedOn.ToString());

db.Execute();
}


