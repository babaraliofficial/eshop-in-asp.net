<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="setupbrands.aspx.cs" Inherits="BIGSHOPE.admin.setupcatagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <a href="catagoriesrecord.aspx" style="float: right;">Back</a>
                    <h1>Setup Brands<small></small></h1>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        Welcome to the admin dashboard! Feel free to review all pages and modify the layout to your needs. 
                        <br />
                        This theme uses the <a href="https://www.shieldui.com">ShieldUI</a> JavaScript library for the 
                        additional data visualization and presentation functionality illustrated here.
                    </div>
                </div>
            </div>
        <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <div class="table-responsive">
                      
                        <div class="form-group">
                            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label><br />
                            <asp:TextBox ID="tbName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblDesc" runat="server" Text="Description"></asp:Label><br />
                            <asp:TextBox ID="tbDesc" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">

                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnAdd_Click" />
                    <asp:Label ID="lblStatus" runat="server" ForeColor="Green" Font-Size="Small" Text=""></asp:Label>

                </div>
            </div>

        </div>

</asp:Content>
