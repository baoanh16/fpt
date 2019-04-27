<%@ Page Language="c#" ValidateRequest="false" MaintainScrollPositionOnPostback="true"
    EnableViewStateMac="false" CodeBehind="SearchResults.aspx.cs" MasterPageFile="~/App_MasterPages/layout.Master"
    AutoEventWireup="false" Inherits="CanhCam.Web.UI.Pages.SearchResults" %>

<asp:Content ContentPlaceHolderID="leftContent" ID="MPLeftPane" runat="server" />
<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
    <div class="container">
        <div class="search-page">
            <div class="search-page-top">
                <div class="page-header">
                    <portal:HeadingControl ID="heading" runat="server" />
                </div>
				<asp:Panel ID="pnlSearch" CssClass="searchcontrols" DefaultButton="btnDoSearch" runat="server">
                    <div class="form-inline mrt10">
                        <div class="form-group">
                            <asp:TextBox ID="txtSearchInput" runat="server" Columns="50" MaxLength="255" CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddFeatureList" runat="server" CssClass="searchfeatures form-control" />
                        </div>
                        <div class="form-group">
                            <span class="s-datefilters" id="spnDateRange" runat="server">
                                <asp:Literal ID="litDatePreamble" runat="server" EnableViewState="false" />
                                <gb:DatePickerControl ID="dpBeginDate" runat="server" SkinID="search" CssClass="form-control" />
                                <asp:Literal ID="litAnd" runat="server" EnableViewState="false" />
                                <gb:DatePickerControl ID="dpEndDate" runat="server" SkinID="search" CssClass="form-control" />
                            </span>
                        </div>
                        <div class="form-group form-btn">
                            <asp:Button CssClass="seachpage-btn btn btn-default" ID="btnDoSearch" runat="server" CausesValidation="false" UseSubmitBehavior="true" />
							<span class="mdi-magnify"></span>
                        </div>
                    </div>
                </asp:Panel>
                <div id="divResults" runat="server" class="wrap01 searchresultsummary">
                    <gb:SiteLabel ID="lblReslts" runat="server" ConfigKey="SearchResultsLabel" UseLabelTag="false" />
                    <asp:Label ID="lblFrom" runat="server" Font-Bold="True" />-<asp:Label ID="lblTo"
                        runat="server" Font-Bold="True" />
                    <gb:SiteLabel ID="Sitelabel1" runat="server" ConfigKey="SearchResultsOfLabel" UseLabelTag="false" />
                    <asp:Label ID="lblTotal" runat="server" Font-Bold="True" />
                    <gb:SiteLabel ID="lblFor" runat="server" ConfigKey="SearchResultsForLabel" UseLabelTag="false" />
                    <asp:Label ID="lblQueryText" runat="server" Font-Bold="True" CssClass="searchqueryterm" />
                    <span class="searchduration">
                        <asp:Label ID="lblDuration" runat="server" Visible="False" />
                        <gb:SiteLabel ID="lblSeconds" runat="server" Visible="False" ConfigKey="SearchResultsSecondsLabel" UseLabelTag="false" />
                    </span>
                </div>
                
                <asp:Label ID="lblMessage" runat="server" />
            </div>
            <portal:SearchResultsDisplaySettings ID="displaySettings" runat="server" />
            <asp:Panel ID="pnlInternalSearch" runat="server" DefaultButton="btnDoSearch">
                <div id="divDelete" runat="server" visible="false" class="btn-reindex">
                    <asp:Button SkinID="DefaultButton" ID="btnRebuildSearchIndex" runat="server" />
                </div>
                <asp:Panel ID="pnlSearchResults" runat="server" Visible="False" CssClass="searchresults">
                    <portal:gbCutePager ID="pgrTop" runat="server" Visible="true" />
                    <div class="clear"></div>
                    <asp:Repeater ID="rptResults" runat="server" EnableViewState="False">
                        <HeaderTemplate>
                            <dl class="searchresultlist">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <dd class="searchresult">
                                <NeatHtml:UntrustedContent ID="UntrustedContent1" runat="server" TrustedImageUrlPattern='<%# CanhCam.Web.Framework.SecurityHelper.RegexRelativeImageUrlPatern %>'
                                    ClientScriptUrl="~/ClientScript/NeatHtml.js">
                                    <<%# displaySettings.ItemHeadingElement %>>
                                                        <asp:HyperLink ID="Hyperlink1" runat="server" 
                                                            NavigateUrl='<%# BuildUrl((CanhCam.SearchIndex.IndexItem)Container.DataItem) %>'
                                                            Text='<%# FormatLinkText(Eval("ZoneName").ToString(), Eval("Title").ToString())  %>' />
                                                        </<%# displaySettings.ItemHeadingElement %>>
                                    <div class="searchresultdesc">
                                        <%# Eval("Intro").ToString() %>
                                    </div>
                                    <%# FormatAuthor(Eval("Author").ToString()) %>
                                    <%# FormatCreatedDate((CanhCam.SearchIndex.IndexItem)Container.DataItem) %>
                                    <%# FormatModifiedDate((CanhCam.SearchIndex.IndexItem)Container.DataItem) %>
                                </NeatHtml:UntrustedContent>
                                <hr>
                            </dd>
                        </ItemTemplate>
                        <FooterTemplate>
                            </dl>
                        </FooterTemplate>
                    </asp:Repeater>
                    <portal:gbCutePager ID="pgrBottom" runat="server" Visible="false" />
                </asp:Panel>
                <asp:Panel ID="pnlNoResults" runat="server" Visible="False">
                    <div class="mrt10 mrb10 text-danger">
                    <asp:Label ID="lblNoResults" runat="server" />
                    </div>
                </asp:Panel>
                <div>
                    <span id="spnAltSearchLinks" runat="server" visible="false">
                        <asp:Literal ID="litAltSearchMessage" runat="server" />
                        <asp:HyperLink ID="lnkBingSearch" runat="server" Visible="false" CssClass="extrasearchlink" />
                        <asp:HyperLink ID="lnkGoogleSearch" runat="server" Visible="false" CssClass="extrasearchlink" />
                    </span>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlGoogleSearch" runat="server" Visible="false" CssClass="gcswrap">
                <portal:GoogleCustomSearchControl ID="gcs" runat="server" Visible="false" />
            </asp:Panel>
            <asp:Panel ID="pnlBingSearch" runat="server" Visible="false" CssClass="searchresults bingresults">
                <portal:BingSearchControl ID="bingSearch" runat="server" Visible="false" />
            </asp:Panel>
        </div>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="rightContent" ID="MPRightPane" runat="server" />
<asp:Content ContentPlaceHolderID="pageEditContent" ID="MPPageEdit" runat="server" />
