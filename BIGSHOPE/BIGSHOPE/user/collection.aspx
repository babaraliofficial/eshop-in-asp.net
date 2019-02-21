<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="collection.aspx.cs" Inherits="BIGSHOPE.user.collection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>Collection</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Shop Grid Area Start ##### -->
    <section class="shop_grid_area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop_sidebar_area">

                        <!-- ##### Single Widget ##### -->
                        <div class="widget catagory mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Catagories</h6>

                            <!--  Catagories  -->
                            <div class="catagories-menu">
                                <ul id="menu-content2" class="menu-content collapse show">
                                    <!-- Single Item -->
                                    <li data-toggle="collapse" data-target="#clothing">
                                        <a href="#">Brands</a>
                                        <ul class="sub-menu collapse show" id="clothing">
                                            <li><a href="collection.aspx">All</a></li>
                                            
                                            <asp:DataList ID="DLBrnd" runat="server">
                                                <ItemTemplate>
                                                    <li><a href="collection.aspx?brnd_id=<%# Eval("brnd_id") %>"><%# Eval("brnd_name") %></a></li>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </ul>
                                    </li>
                                    <!-- Single Item -->
                                    <li data-toggle="collapse" data-target="#shoes" class="collapsed">
                                        <a href="#">Processor</a>
                                        <ul class="sub-menu collapse" id="shoes">
                                            <li><a href="collection.aspx">All</a></li>
                                            
                                            <asp:DataList ID="DLProc" runat="server">
                                                <ItemTemplate>
                                                    <li><a href="collection.aspx?proc_id=<%# Eval("proc_id") %>"><%# Eval("proc_name") %></a></li>
                                                </ItemTemplate>
                                            </asp:DataList> 

                                        </ul>
                                    </li>
                                    <!-- Single Item -->
                                    <li data-toggle="collapse" data-target="#accessories" class="collapsed">
                                        <a href="#">Generation</a>
                                        <ul class="sub-menu collapse" id="accessories">
                                            <li><a href="collection.aspx">All</a></li>
                                           
                                            <asp:DataList ID="DLGen" runat="server">
                                                <ItemTemplate>
                                                    <li><a href="collection.aspx?gen_id=<%# Eval("gen_id") %>"><%# Eval("gen_name") %></a></li>
                                                </ItemTemplate>
                                            </asp:DataList>

                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget price mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Filter by</h6>
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Price</p>

                            <div class="widget-desc">
                                <div class="slider-range">
                                    <div data-min="49" data-max="360" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="49" data-value-max="360" data-label-result="Range:">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    </div>
                                    <div class="range-price">Range: $49.00 - $360.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget color mb-50">
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Color</p>
                            <div class="widget-desc">
                                <ul class="d-flex">
                                    <li><a href="#" class="color1"></a></li>
                                    <li><a href="#" class="color2"></a></li>
                                    <li><a href="#" class="color3"></a></li>
                                    <li><a href="#" class="color4"></a></li>
                                    <li><a href="#" class="color5"></a></li>
                                    <li><a href="#" class="color6"></a></li>
                                    <li><a href="#" class="color7"></a></li>
                                    <li><a href="#" class="color8"></a></li>
                                    <li><a href="#" class="color9"></a></li>
                                    <li><a href="#" class="color10"></a></li>
                                </ul>
                            </div>
                        </div>

                        
                    </div>
                </div>

                <div class="col-12 col-md-8 col-lg-9">
                    <div class="shop_grid_product_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="product-topbar d-flex align-items-center justify-content-between">
                                    <!-- Total Products -->
                                    <div class="total-products">
                                        <p><span>186</span> products found</p>
                                    </div>
                                    <!-- Sorting -->
                                    <div class="product-sorting d-flex">
                                        <p>Sort by:</p>
                                            <select name="select" id="sortByselect">
                                                <option value="value">Highest Rated</option>
                                                <option value="value">Newest</option>
                                                <option value="value">Price: $$ - $</option>
                                                <option value="value">Price: $ - $$</option>
                                            </select>
                                            <input type="submit" class="d-none" value="">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">


                            <asp:Repeater runat="server" ID="RP" OnItemCommand="RP_ItemCommand">
                                <ItemTemplate>

                                    <!-- Single Product -->
                                    <div class="col-12 col-sm-6 col-lg-4">

                                        <div class="single-product-wrapper">
                                            <!-- Product Image -->
                                            <div class="product-img">
                                                
                                                <a href="singleproduct.aspx?prod_id=<%# Eval("prod_id") %>">

                                                    <asp:HiddenField ID="img" runat="server" Value=' <%# Eval("prod_image") %> ' />
                                                    <asp:Image ID="imgDisplay" runat="server" Height="260" Width="254" ImageUrl=' <%# "../admin/Files/" +  Eval("prod_image") %> ' />

                                                    <!-- Hover Thumb
                                                    <img class="hover-img" src="img/product-img/product-3.jpg" alt="">
                                                     -->

                                                    <!-- Favourite -->
                                                    <div class="product-favourite">
                                                        <a href="#" class="favme fa fa-heart"></a>
                                                    </div>

                                                </a>

                                            </div>

                                            <!-- Product Description -->
                                            <div class="product-description">
                                                <span>
                                                    <%# Eval("brnd_name") %>
                                                </span>
                                                
                                                <a href="singleproduct.aspx?prod_id=<%# Eval("prod_id") %>">
                                                    <h4>
                                                       <%# Eval("prod_name") %>
                                                    </h4>
                                                </a>

                                                <p  class="product-price"><%# Eval("prod_price") %></p>

                                                <!-- Hover Content -->
                                                <div class="hover-content">
                                                    <!-- Add to Cart -->
                                                    <div class="add-to-cart-btn">
                                                        <asp:Button runat="server" ID="btnAddCart" CssClass="btn essence-btn" Text="Add to cart" CommandName="add" CommandArgument='<%# Eval("prod_id") %>' />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:Repeater>


                        </div>
                    </div>
                    <!-- Pagination -->
                    <nav aria-label="navigation">
                        <ul class="pagination mt-50 mb-70">
                            <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">...</a></li>
                            <li class="page-item"><a class="page-link" href="#">21</a></li>
                            <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Shop Grid Area End ##### -->

</asp:Content>
