﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MovieConfirmDelete.aspx.cs" Inherits="_1_ConfirmDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblConfirmDelete" runat="server" style="z-index: 1; left: 17px; top: 52px; position: absolute" Text="Are you sure you want to delete this movie?" Font-Size="XX-Large"></asp:Label>
        <p>
            <asp:Button ID="btnNo" runat="server" height="36px" OnClick="btnNo_Click" style="z-index: 1; left: 291px; top: 118px; position: absolute; width: 166px;" Text="No!" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Button ID="btnYes" runat="server" OnClick="btnYes_Click" style="z-index: 1; left: 87px; top: 118px; position: absolute; height: 36px; width: 166px;" Text="Yes!" />
    </form>
</body>
</html>
