<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="500.aspx.cs" Inherits="BIGSHOPE.user._500" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1>500</h1>
			</div>
			<h2>This Page isn't working</h2>
			<p>This error is currently unable to handle this request.</p> <br />
			<p>HTTP ERROR 500</p>
			<a href="index.aspx">Go To Homepage</a>
		</div>
	</div>

</asp:Content>
