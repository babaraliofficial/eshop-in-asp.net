<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="BIGSHOPE.user.checkout" %>
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


    <!-- ##### Checkout Area Start ##### -->
    <section class="checkout_area section-padding-80">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading mb-30">
                            <h5>Billing Address</h5>
                        </div>


                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="first_name">First Name <span>*</span></label>
                                    <asp:TextBox ID="tbFName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="last_name">Last Name <span>*</span></label>
                                    <asp:TextBox ID="tbLName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="email_address">Email Address <span>*</span></label>
                                    <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
								<div class="col-12 mb-3">
                                    <label for="phone_number">Phone No <span>*</span></label>
                                    <asp:TextBox ID="tbPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="street_address">Address <span>*</span></label>
                                    <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="city">Town/City <span>*</span></label>
                                    <asp:TextBox ID="tbCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
								<div class="col-md-6 mb-3">
                                    <label for="state">State <span>*</span></label>
                                    <asp:TextBox ID="tbState" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="postcode">Postcode <span>*</span></label>
                                    <asp:TextBox ID="tbPost" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                                <!--<div class="col-12 mb-3">
                                    <label for="country">Country <span>*</span></label>
                                    <select class="w-100" id="country">
                                        <option value="pk">Pakistan</option>
                                        <option value="usa">United States</option>
                                        <option value="uk">United Kingdom</option>
                                        <option value="ger">Germany</option>
                                        <option value="fra">France</option>
                                        <option value="aus">Australia</option>
                                        <option value="bra">Brazil</option>
                                        <option value="cana">Canada</option>
                                    </select>
                                </div>
                                
                                <div class="col-12">
                                    <div class="custom-control custom-checkbox d-block mb-2">
                                        <asp:CheckBox ID="cbTC" runat="server" CssClass="custom-control-input" />
                                        <label class="custom-control-label" for="customCheck1">Terms and conitions</label>
                                    </div>
                                    <div class="custom-control custom-checkbox d-block mb-2">
                                        <asp:CheckBox ID="cbNA" runat="server" CssClass="custom-control-input" />
                                        <label class="custom-control-label" for="customCheck2">Create an accout</label>
                                    </div>
                                </div> -->


								<div class="col-12 mb-3">
                                    <label for="password">Password <span>*</span></label>
                                    <asp:TextBox ID="tbPass" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="cpassword">Confirm Password <span>*</span></label>
                                    <asp:TextBox ID="tbCnfrmPass" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
								
                                <div class="col-12">
                                    <div class="custom-control custom-checkbox d-block mb-2">
                                        <asp:CheckBox ID="cbTrmC" runat="server" CssClass="custom-control-input" />
                                        <label class="custom-control-label" for="customCheck1">Terms and conitions</label>
                                    </div>
                                </div>

                            </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
                    <div class="order-details-confirmation">

                        <div class="cart-page-heading">
                            <h5>Your Order</h5>
                            <p>The Details</p>
                        </div>

                        <ul class="order-details-form mb-4">
                            <li><span>Product</span> <span>Total</span></li>
                            <li><span>Subtotal</span> <span id="subTotal"></span></li>
                            <li><span>Shipping</span> <span>Free</span></li>
                            <li><span>Total</span> <span id="grndTotal"></span></li>
                            <!-- <li><span>Total</span><asp:Label runat="server" ID="lblTotal" Text=""></asp:Label></li> -->
                        </ul>

                        <div id="accordion" role="tablist" class="mb-4">
                           
                            <div class="row">

                                <div class="col-12 mb-4">
                                    <label for="card_number">Card Number <span>*</span></label>
                                    <asp:TextBox ID="tbCardNo" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="cvc">CVC <span>*</span></label>
                                    <asp:TextBox ID="tbCVC" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="month">Month <span>*</span></label>
                                    <asp:TextBox ID="tbMonth" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="year">Year <span>*</span></label>
                                    <asp:TextBox ID="tbYear" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                            </div>
                            
                        </div>
                        <asp:Button ID="btnCheckOut" runat="server" Text="Place Order" CssClass="btn essence-btn" OnClick="btnCheckOut_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ##### Checkout Area End ##### -->
    
    <!-- ##### Set Total Value ##### -->
    
    <script type="text/javascript">
        var grandtotal = localStorage.getItem("grandTotal");
        document.getElementById("grndTotal").innerHTML = grandtotal;
        document.getElementById("subTotal").innerHTML = grandtotal;
    </script>

    <!-- ##### Set Total Value ##### -->


</asp:Content>
