<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BIGSHOPE.user.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>Customer Login</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                
                <div class="form-group">
                    <h2 class="">Login </h2>
                    <p>If you have an account with us, please log in</p>
                </div>

                <div class="form-group">
                    <label class="">Username</label>
                    <asp:TextBox ID="tbUser" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="">Password</label>
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button Text="Login" runat="server" ID="btnLogin" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                    <asp:Label ID="lblLoginStatus" runat="server" ForeColor="Red" Font-Size="Smaller" Text=""></asp:Label>
                </div>
			</div>
        </div>
    </div>

</asp:Content>
