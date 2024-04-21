﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileViewer.aspx.cs" Inherits="ProfileViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        <asp:Label ID="lblProfileViewer" runat="server" SelectionMode="Single" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 279px; top: 70px; position: absolute" Text="Your Profile"></asp:Label>
        </p>
        <asp:Label ID="lblUsername" runat="server" style="z-index: 1; left: 236px; top: 179px; position: absolute" Text="Your username: "></asp:Label>
        <asp:Label ID="lblEmail" runat="server" style="z-index: 1; left: 261px; top: 217px; position: absolute" Text="Your email: "></asp:Label>
        <asp:Button ID="btnSignOut" runat="server" OnClick="btnSignOut_Click" style="z-index: 1; left: 350px; top: 263px; position: absolute" Text="Sign out" />
        <asp:Label ID="lblUsernameText" runat="server" style="z-index: 1; left: 339px; top: 178px; position: absolute"></asp:Label>
        <asp:Label ID="lblEmailText" runat="server" style="z-index: 1; left: 342px; top: 217px; position: absolute"></asp:Label>
    </form>
</body>
</html>
