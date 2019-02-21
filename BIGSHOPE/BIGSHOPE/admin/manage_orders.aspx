<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="manage_orders.aspx.cs" Inherits="BIGSHOPE.admin.manage_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <h1>Manage Records<small></small></h1>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    
                     <div class="table-responsive">
                       
                         <asp:GridView ID="GV" runat="server" OnRowCommand="GV_RowCommand" OnRowDeleting="GV_RowDeleting" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover table-responsive" >
                            
                            <Columns>

                                <asp:TemplateField HeaderText="Order ID">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblOrderID" Text='<%# Eval("order_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Order Date">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblTime" Text='<%# Eval("order_time") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product ID">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblProdID" Text='<%# Eval("order_prod_id") %>' ></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Total Amount">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblOrderTotal" Text='<%# Eval("order_total_amount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Client Address">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblAddress" Text='<%# Eval("customer_address") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                            </Columns>

                      </asp:GridView>

                    </div>

                </div>
            </div>

        </div>

</asp:Content>
