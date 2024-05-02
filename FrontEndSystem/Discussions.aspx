﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Discussions.aspx.cs" Inherits="Discussions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discussion Board</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <div>
    <form id="form1" runat="server">
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute; right: 1146px;" OnClick="imgBtnLogo_Click" />
        <p>
            &nbsp;</p>
        
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 889px; top: 66px; position: absolute; height: 50px; " />
        <asp:Label ID="lblDate4" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 406px; position: absolute" Text="Date posted: "></asp:Label>
        <asp:Label ID="lblTitle" runat="server" SelectionMode="Single" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 409px; top: 72px; position: absolute" Text="Discussion Board"></asp:Label>
        
        <asp:Label ID="lblMessageText1" runat="server" style="z-index: 1; left: 34px; top: 598px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Label ID="lblMessageText2" runat="server" style="z-index: 1; left: 34px; top: 523px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Label ID="lblMessageText3" runat="server" style="z-index: 1; left: 34px; top: 452px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Label ID="lblMessageText4" runat="server" style="z-index: 1; left: 34px; top: 375px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Label ID="lblMessageText5" runat="server" style="z-index: 1; left: 34px; top: 301px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Label ID="lblMessageText6" runat="server" style="z-index: 1; left: 34px; top: 233px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Label ID="lblDate7" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 189px; position: absolute" Text="Date posted: "></asp:Label>
        <asp:Label ID="lblMessageText7" runat="server" style="z-index: 1; left: 34px; top: 159px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="z-index: 1; left: 34px; top: 677px; position: absolute" Text="Write a message" />
        <asp:Label ID="lblErrorEx" runat="server" style="z-index: 1; left: 230px; top: 681px; position: absolute"></asp:Label>
        <asp:Label ID="lblUsername1" runat="server" style="z-index: 1; left: 797px; top: 605px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblUsername2" runat="server" style="z-index: 1; left: 797px; top: 529px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblUsername3" runat="server" style="z-index: 1; left: 797px; top: 459px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblUsername4" runat="server" style="z-index: 1; left: 797px; top: 382px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblUsername5" runat="server" style="z-index: 1; left: 797px; top: 308px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblUsername6" runat="server" style="z-index: 1; left: 797px; top: 240px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblUsername7" runat="server" style="z-index: 1; left: 797px; top: 167px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
        <asp:Label ID="lblDate1" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 628px; position: absolute" Text="Date posted: "></asp:Label>
        <asp:Label ID="lblDate2" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 553px; position: absolute" Text="Date posted: "></asp:Label>
        <asp:Label ID="lblDate3" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 483px; position: absolute" Text="Date posted: "></asp:Label>
        <asp:Label ID="lblDate5" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 330px; position: absolute" Text="Date posted: "></asp:Label>
        <asp:Label ID="lblDate6" runat="server" Font-Underline="True" style="z-index: 1; left: 797px; top: 263px; position: absolute" Text="Date posted: "></asp:Label>
    </form>
    </div>
</body>
</html>
