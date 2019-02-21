<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="setupproducts.aspx.cs" Inherits="BIGSHOPE.admin.setupproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <a href="productrecord.aspx" style="float: right;">Back</a>
                    <h1>Manage Product<small></small></h1>
                    <div id="success_alert" class="alert alert-success alert-dismissable" style="display: none">
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
                            <asp:Label ID="lblName" runat="server" Text="Product Name"></asp:Label><br />
                            <asp:TextBox ID="tbName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblDesc" runat="server" Text="Product Description"></asp:Label><br />
                            <asp:TextBox ID="tbDesc" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblPrice" runat="server" Text="Product Price"></asp:Label><br />
                            <asp:TextBox ID="tbPrice" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Product Image"></asp:Label><br />
                            <asp:FileUpload ID="fileImage" runat="server" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Product Quantity"></asp:Label><br />
                            <asp:TextBox ID="tbQty" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="RAM"></asp:Label><br />
                            <asp:TextBox ID="tbRAM" CssClass="form-control" runat="server"></asp:TextBox>
                            <!--<span class="input-group-addon">GB</span>-->
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Brand"></asp:Label><br />
                            <asp:DropDownList ID="slctBrand" runat="server" CssClass="dropdown form-control"></asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Processor"></asp:Label><br />
                            <asp:DropDownList ID="slctProc" runat="server" CssClass="dropdown form-control" OnSelectedIndexChanged="slctProc_SelectedIndexChanged"></asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Generation"></asp:Label><br />
                            <asp:DropDownList ID="slctGen" runat="server" CssClass="dropdown form-control" OnSelectedIndexChanged="slctGen_SelectedIndexChanged"></asp:DropDownList>
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
