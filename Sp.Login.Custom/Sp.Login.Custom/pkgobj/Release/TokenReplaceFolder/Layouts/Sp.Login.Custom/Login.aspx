<%@ Assembly Name="Sp.Login.Custom, Version=1.0.0.0, Culture=neutral, PublicKeyToken=348b3c31ce2c9786" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sp.Login.Custom.Layouts.Sp.Login.Custom.Login" MasterPageFile="~/_layouts/15/errorv15.master" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server"  EncodeMethod="HtmlEncode" Id="ClaimsFormsPageTitle" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
 <div id="SslWarning" style="color:red;display:none">
 <SharePoint:EncodedLiteral runat="server"  EncodeMethod="HtmlEncode" Id="ClaimsFormsPageMessage" />
 </div>
    <link href="/_layouts/15/Sp.Login.Custom/DesignFiles/Css/customLogin.css" rel="stylesheet" />

 <asp:login id="signInControl" FailureText="<%$Resources:wss,login_pageFailureText%>" runat="server" width="100%">
	<layouttemplate>
		<asp:label id="FailureText" class="ms-error" runat="server"/>
		<div id="customLoginMain">
            <table width="100%" style="background-color:wheat">
        <tr id="customLoginHeader"><td colspan="2" align="center">Please sign in to continue</td></tr>
        
		<tr>
            <td nowrap="nowrap"><SharePoint:EncodedLiteral runat="server" text="User Name" EncodeMethod='HtmlEncode'/></td>
			<td width="100%"><asp:textbox id="UserName" autocomplete="off" runat="server" class="ms-inputuserfield userNameIcom" width="94%" /></td>
		</tr>
        
		<tr>
            <td nowrap="nowrap"><SharePoint:EncodedLiteral runat="server" text="Password" EncodeMethod='HtmlEncode'/></td>
			<td width="100%"><asp:textbox id="password" TextMode="Password" autocomplete="off" runat="server" class="ms-inputuserfield passwordIcom" width="94%"/></td>
		</tr>
         <tr>
			<td colspan="2" align="center"><asp:checkbox id="RememberMe" text="Remember Me" runat="server" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><asp:button id="login" commandname="Login" text="<%$Resources:wss,login_pagetitle%>" runat="server" /></td>
		</tr>
		
		</table>
		</div>
	</layouttemplate>
 </asp:login>
</asp:Content>
