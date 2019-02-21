<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BIGSHOPE.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
		        <div class="login-screen">
			        <div class="app-title">
				        <h1>Login</h1>
			        </div>

			        <div class="login-form">
				        <div class="control-group">
				            &nbsp;<asp:TextBox ID="tbEmail" runat="server" placeholder="Username"></asp:TextBox>
				        </div>

				        <div class="control-group">
				            <asp:TextBox ID="tbPassword" runat="server" placeholder="Password" TextMode="password"></asp:TextBox>
				        </div>

                        <div class="control-group">
				            <asp:CheckBox ID="cbRemember" runat="server" Text=""  AutoPostBack="true" OnCheckedChanged="cbRemember_CheckedChanged" />
                            <asp:Label ID="L1" runat="server">Rememer me</asp:Label>
				        </div>

                        <div class="control-group">
				            <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#ff6600" ForeColor="White" OnClick="btnLogin_Click" />
	    			    </div>

				        <asp:Label ID="lblStatus" runat="server" Font-Size="8pt" ForeColor="Red"></asp:Label><br />
				        &nbsp;</div>
		        </div>
	        </div>
    </form>
</body>
</html>
