<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="cart_empty.aspx.cs" Inherits="BIGSHOPE.user.cart_empty" %>
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
                
                Cart is empty yet, add some products from collection.
                
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
    
</asp:Content>
