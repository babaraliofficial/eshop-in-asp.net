<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="singleproduct.aspx.cs" Inherits="BIGSHOPE.user.singleproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ##### Single Product Details Area Start ##### -->
    <section class="single_product_details_area d-flex align-items-center">

        <asp:Repeater runat="server" ID="RP" OnItemCommand="RP_ItemCommand">
            <ItemTemplate>

                <!-- Single Product Thumb -->
                <div class="single_product_thumb clearfix">
                    <div style="background-color: red;">
                        <asp:Image ID="imgDisplay" runat="server" ImageUrl=' <%# "../admin/Files/" +  Eval("prod_image") %>' Width="100%" Height="100%" />
                    </div>
                </div>

                <!-- Single Product Description -->
                <div class="single_product_desc clearfix">
                    <asp:Label runat="server" ID="lblBrndName" Text='<%# Eval("brand_key") %>'></asp:Label>
                    <a href="cart.html">
                        <h2> <%# Eval("prod_name") %> </h2>
                    </a>
                    <p class="product-price"><span>Price </span>  <%# Eval("prod_price") %>.00 <span>PRK</span></p>
                    <p class="product-desc"> <%# Eval("prod_desc") %></p>
                    
                    <span style="color: green;">In Stock: <%# Eval("prod_qnty") %></span>
			        <span> RAM: <%# Eval("prod_ram") %></span>
			        <span> Generation: <%# Eval("gen_key") %></span>
            
                    <!-- Cart & Favourite Box -->
                    <div class="cart-fav-box d-flex align-items-center">
                        <!-- Cart -->
                        <asp:Button ID="btnCart" runat="server" CssClass="btn essence-btn" Text="Add to cart" CommandName="add" CommandArgument='<%# Eval("prod_id") %>' />
                        <!-- Favourite -->
                        <div class="product-favourite ml-4">
                            <a href="#" class="favme fa fa-heart"></a>
                        </div>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>

        
    </section>
    <!-- ##### Single Product Details Area End ##### -->

</asp:Content>
