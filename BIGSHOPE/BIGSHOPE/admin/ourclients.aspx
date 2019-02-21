<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="ourclients.aspx.cs" Inherits="BIGSHOPE.admin.ourclients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <h1>Our Clients<small></small></h1>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    
                     <div class="table-responsive">
                        
                        <asp:GridView ID="GV" runat="server" OnRowCommand="GV_RowCommand" OnRowDeleting="GV_RowDeleting" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover table-responsive" >
                            
                            <Columns>

                                <asp:TemplateField HeaderText="Client ID">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblID" Text='<%# Eval("customer_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Client Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblName" Text='<%# Eval("customer_name") %>' ></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Client Email">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblEmail" Text='<%# Eval("customer_email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Client Phone">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblPhone" Text='<%# Eval("customer_phone") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Client Address">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblAddress" Text='<%# Eval("customer_address") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="lnkDelete" CommandName="delete" CommandArgument='<%# Eval("customer_id") %>' Text="delete" OnClientClick="return confirm('Are you sure you want to delete this product?');"><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                      </asp:GridView>

                    </div>

                </div>
            </div>

        </div>

</asp:Content>
