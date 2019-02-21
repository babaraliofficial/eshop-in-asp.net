<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="catagoriesrecord.aspx.cs" Inherits="BIGSHOPE.admin.catagoriesrecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">
                <h1>Catagories<small> Record</small></h1>
                <div class="alert alert-success alert-dismissable" style="display: none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    Welcome to the admin dashboard! Feel free to review all pages and modify the layout to your needs. 
                    <br />
                    This theme uses the <a href="https://www.shieldui.com">ShieldUI</a> JavaScript library for the 
                    additional data visualization and presentation functionality illustrated here.
                </div>
            </div>
        </div>

        <!-- Brand -->

        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">
                
                <h3>Brands</h3>

                <div class="table-responsive">

                    <asp:GridView ID="GV_Brnds" runat="server" OnRowCommand="GV_Brnds_RowCommand" OnRowEditing="GV_Brnds_RowEditing" OnRowDeleting="GV_Brnds_RowDeleting" AutoGenerateColumns="false" CssClass="table table-striped table-responsive table-hover table-bordered" >

                        <Columns>
                                
                                <asp:TemplateField HeaderText="Brand Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblBrndName" Text='<%# Eval("brnd_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Brand Desc">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblBrndDesc" Text='<%# Eval("brnd_desc") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="lnkEdit" CommandName="edit" CommandArgument='<%# Eval("brnd_id") %>' Text="edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        /
                                        <asp:LinkButton runat="server" ID="lnkDelete" Text="delete" CommandName="delete" CommandArgument='<%# Eval("brnd_id") %>' OnClientClick="return confirm('Are you sure you want to delete this department?');"><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

                <asp:Button ID="btnAddBrnd" runat="server" CssClass="btn btn-primary" Text="Add new brand" OnClick="btnAddBrnd_Click" />

            </div>
        </div>

        <br />
        <br />

        <!-- Processor -->

        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">

                <h3>Processor</h3>

                <div class="table-responsive">

                    <asp:GridView ID="GV_Proc" runat="server" OnRowCommand="GV_Proc_RowCommand" OnRowDeleting="GV_Proc_RowDeleting" OnRowEditing="GV_Proc_RowEditing" AutoGenerateColumns="false" CssClass="table table-striped table-responsive table-hover table-bordered" >

                        <Columns>
                                
                                <asp:TemplateField HeaderText="Processor Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblProcName" Text='<%# Eval("proc_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Processor Desc">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblProcDesc" Text='<%# Eval("proc_desc") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="lnkEdit" CommandName="edit" CommandArgument='<%# Eval("proc_id") %>' Text="edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        /
                                        <asp:LinkButton runat="server" ID="lnkDelete" ommandName="delete" CommandArgument='<%# Eval("proc_id") %>' Text="delete" OnClientClick="return confirm('Are you sure you want to delete this department?');"><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

                <asp:Button ID="btnAddProc" runat="server" CssClass="btn btn-primary" Text="Add new processor" OnClick="btnAddProc_Click" />

            </div>
        </div>

        <br />
        <br />

        <!-- Generation -->

        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">

                <h3>Generation</h3>

                <div class="table-responsive">

                    <asp:GridView ID="GV_Gen" runat="server" OnRowCommand="GV_Gen_RowCommand" OnRowDeleting="GV_Gen_RowDeleting" OnRowEditing="GV_Gen_RowEditing" AutoGenerateColumns="false" CssClass="table table-striped table-responsive table-hover table-bordered">

                        <Columns>
                                
                                <asp:TemplateField HeaderText="Genration Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="llGenName" Text='<%# Eval("gen_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Genration Desc">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblGenDesc" Text='<%# Eval("gen_desc") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="lnkEdit"  CommandName="edit" CommandArgument='<%# Eval("gen_id") %>' Text="edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        /
                                        <asp:LinkButton runat="server" ID="lnkDelete" ommandName="delete" CommandArgument='<%# Eval("gen_id") %>' Text="delete" OnClientClick="return confirm('Are you sure you want to delete this department?');"><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                        </Columns>
                        
                    </asp:GridView>

                </div>

                <asp:Button ID="tnAddGen" runat="server" CssClass="btn btn-primary" Text="Add new genration" OnClick="btnAddGen_Click" />

            </div>
        </div>
    </div>


</asp:Content>
