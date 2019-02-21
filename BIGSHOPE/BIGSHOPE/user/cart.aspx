<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="BIGSHOPE.user.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div style="margin-top: 50px"></div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-12">
                
                <asp:GridView ID="GV" runat="server" CssClass="table table-borderless table-bordered table-striped table-hover" OnRowCommand="GV_RowCommand" OnRowDeleting="GV_RowDeleting" AutoGenerateColumns="False" ShowFooter="true" >
                    
                    <Columns>

                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:Image ID="imgDisplay" runat="server" Height="50" Width="50" ImageUrl=' <%# "../admin/Files/" +  Eval("prod_image") %> ' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="prod_name" HeaderText="Product" />

                        <asp:BoundField DataField="prod_qnty" HeaderText="Available" ItemStyle-CssClass="avlQty" />

                        <asp:BoundField DataField="prod_price" DataFormatString="{0:0.00}" ItemStyle-CssClass="price" HeaderText="Price (PRK)" />
                        <asp:TemplateField HeaderText="Quantity" >
                            <ItemTemplate>                
                                <asp:TextBox ID="TextBoxQty" CssClass="txtQty text-center" runat="server" Text="1" TextMode="Number" MaxLength="5" Width="100px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxQty" Display="Dynamic" ForeColor="Red" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Net Price">
                            <ItemTemplate>
                                <span class="totalPrice"></span>.00
                            </ItemTemplate>    
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="">
                           
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="lnkDelete" CssClass="btn btn-sm btn-danger float-right" Text="Remove" CommandArgument='<%# Eval("prod_id") %>' CommandName="delete"><i class="fa fa-trash"></i></asp:LinkButton>
                            </ItemTemplate>

                            <FooterTemplate>
                               Total: &nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="grndTotal" class="grandtotal" style="font-weight: bolder;"></asp:Label>.00 &nbsp;&nbsp; (PRK)
                            </FooterTemplate>

                        </asp:TemplateField>

                    </Columns>        
                </asp:GridView>


            </div>

            
            <div class="col mb-2">
                <div class="row">
                    <div class="col-sm-12  col-md-6">
                        <asp:Button runat="server" ID="btnBackShopping" CssClass="btn btn-block btn-light" Text="Back to shopping" OnClick="btnBackShopping_Click" />
                    </div>
                    <div class="col-sm-12 col-md-6 text-right">
                        <asp:Button ID="btnCheck" runat="server" CssClass="btn btn-block btn-success" Text="Checkout" OnClick="btnCheck_Click" />
                    </div>
                </div>
            </div>

        </div>
    </div>

    

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div style="margin-bottom: 50px"></div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="../Scripts/jquery-3.0.0.min.js"></script>
    <script type="text/javascript">

        
        //Change price and grand total on changing qty
        $('#<%=GV.ClientID %> .txtQty').blur(function () {
            var $tr = $(this).parents('tr');
            if ($tr.length > 0) {
                if (parseInt($tr.find('.avlQty').html()) < $(this).val()) {
                    alert('Qty must not exceed available quantity.');
                    var $ctrl = $(this);
                    window.setTimeout(function () {
                        $ctrl.focus();
                     }, 50);
                    return false;
                }
                $tr.find('.totalPrice').html(parseFloat($tr.find('.price').html()) * parseInt($(this).val()));
            }
            CalculateGrandTotal();
        });
        //To get grand Total
        function CalculateGrandTotal() {
            var grandTotal = 0.0;
            $('#<%=GV.ClientID %> tr:gt(0)').each(function () {
                grandTotal = grandTotal + parseFloat($(this).find('.totalPrice').length == 0 || !$(this).find('.totalPrice').html() ? 0 : $(this).find('.totalPrice').html());
            });
            $('#<%=GV.ClientID %> .grandtotal').html(grandTotal);
            localStorage.setItem("grandTotal", grandTotal);
            document.cookie = "grandTotal = " + grandTotal;

        }

        //To allow numeric character only
        $('#<%=GV.ClientID %> .txtQty').keydown(function (event) {
            // Allow: backspace, delete, tab, escape, and enter
            if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 ||
            // Allow: Ctrl+A
        (event.keyCode == 65 && event.ctrlKey === true) ||
            // Allow: home, end, left, right
        (event.keyCode >= 35 && event.keyCode <= 39)) {
                // let it happen, don't do anything
                return;
            }
            else {
                // Ensure that it is a number and stop the keypress
                if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                    event.preventDefault();
                }
            }
        });

        //First Time to display all total amount and grand total
        function initGrid() {
            $('#<%=GV.ClientID %> tr:gt(0)').each(function () {
                $(this).find('.totalPrice').html(parseFloat($(this).find('.price').html()) * parseInt($(this).find('.txtQty').val()));
 
            });
            CalculateGrandTotal();
        }
        initGrid();


    </script>

</asp:Content>
