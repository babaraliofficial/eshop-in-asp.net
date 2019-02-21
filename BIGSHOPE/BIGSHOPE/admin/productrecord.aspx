<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="productrecord.aspx.cs" Inherits="BIGSHOPE.admin.productrecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <h1>Products<small> Record</small></h1>
                    
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <div class="table-responsive">
                        
                        <asp:GridView ID="GV" runat="server" OnRowCommand="GV_RowCommand" OnRowEditing="GV_RowEditing" OnRowDeleting="GV_RowDeleting" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover table-responsive" >
                            
                            <Columns>

                                <asp:TemplateField HeaderText="Product ID">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblID" Text='<%# Eval("prod_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Product Image">
                                    <ItemTemplate>
                                        <asp:Image ID="imageDisplay" runat="server" Width="100" Height="100" ImageUrl=' <%# "Files/" + Eval("prod_image") %> '  />
                                        <!--<asp:Label runat="server" ID="lblImg" Text='<%# Eval("prod_image") %>'></asp:Label> -->
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblName" Text='<%# Eval("prod_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Product Desc">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblDesc" Text='<%# Eval("prod_desc") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            
                                <asp:TemplateField HeaderText="Product Price">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblPrice" Text='<%# Eval("prod_price") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product Quantity">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblQty" Text='<%# Eval("prod_qnty") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product RAM">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblRAM" Text='<%# Eval("prod_ram") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product Brand">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblBrnd" Text='<%# Eval("brnd_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product Processor">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblProc" Text='<%# Eval("proc_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Product Generation">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblGen" Text='<%# Eval("gen_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="lnkEdit" CommandName="edit" CommandArgument='<%# Eval("prod_id") %>' Text="edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        /
                                        <asp:LinkButton runat="server" ID="lnkDelete" CommandName="delete" CommandArgument='<%# Eval("prod_id") %>' Text="delete" OnClientClick="return confirm('Are you sure you want to delete this product?');"><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                      </asp:GridView>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2">
                </div>
                <div class="col-lg-10">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="Add new product" OnClick="btnAdd_Click" />
                </div>
            </div>

        </div>
</asp:Content>
