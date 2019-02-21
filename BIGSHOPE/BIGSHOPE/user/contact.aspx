<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserPanel.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="BIGSHOPE.user.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contact-area d-flex align-items-center">

        <div class="google-map">
            <div id="googleMap"></div>
        </div>

        <div class="contact-info">
            <h2>How to Find Us</h2>
            <p>Mauris viverra cursus ante laoreet eleifend. Donec vel fringilla ante. Aenean finibus velit id urna vehicula, nec maximus est sollicitudin.</p>

            <div class="contact-address mt-50">
                <p><span>address:</span> Dpt. CS&IT, UOS Sargodha, PK</p>
                <p><span>telephone:</span> +92 304 882 3317</p>
                <p><a href="mailto:babar.official@hotmail.com">contact@essence.com</a></p>
            </div>
        </div>

    </div>

</asp:Content>
