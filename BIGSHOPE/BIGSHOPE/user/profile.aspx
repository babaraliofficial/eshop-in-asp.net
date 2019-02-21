<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="BIGSHOPE.user.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>Customer Profile</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                
                <asp:Label ID="lblEmail" runat="server" Text="Customer"></asp:Label><br />
                <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="btnLogout_Click" />

			</div>
        </div>
    </div>

</asp:Content>
