<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/App_MasterPages/DialogMaster.Master"
    CodeBehind="JobApplyDialog.aspx.cs" Inherits="CanhCam.Web.NewsUI.JobApplyDialog" %>

<%@ Register TagPrefix="Site" TagName="JobApply" Src="~/News/Controls/JobApplyControl.ascx" %>

<asp:Content ContentPlaceHolderID="phMain" ID="MainContent" runat="server">
    <Site:JobApply ID="jobApply" runat="server" />
</asp:Content>