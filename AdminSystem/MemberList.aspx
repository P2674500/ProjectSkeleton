﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberList.aspx.cs" Inherits="MemberList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Management</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="X-Large" style="z-index: 1; left: 400px; top: 125px; position: absolute" Text="Registered Members"></asp:Label>
        </div>
            <asp:LinkButton ID="lnkBtnMessages" runat="server" style="z-index: 1; left: 949px; top: 255px; width: 150px; position: absolute" OnClick="lnkBtnMessages_Click">Message List</asp:LinkButton>
            <asp:ListBox ID="lstMemberList" runat="server" style="z-index: 1; left: 400px; top: 163px; position: absolute; height: 407px; width: 531px"></asp:ListBox>
        <p>
        <asp:Button ID="btnDelete" runat="server" height="26px" OnClick="btnDelete_Click" style="z-index: 1; left: 400px; top: 584px; position: absolute" Text="Delete user" width="136px" />
        </p>
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 559px; top: 587px; width: 250px; position: absolute"></asp:Label>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 12px; top: 17px; position: absolute" OnClick="imgBtnLogo_Click" />
        <asp:LinkButton ID="lnkBtnMovies" runat="server" style="z-index: 1; left: 949px; top: 286px; width: 150px; position: absolute" OnClick="lnkBtnMovies_Click">Movie List</asp:LinkButton>
        <asp:LinkButton ID="lnkBtnShows" runat="server" style="z-index: 1; left: 949px; top: 321px; width: 150px; position: absolute" OnClick="lnkBtnShows_Click">TV Show List</asp:LinkButton>
        <asp:LinkButton ID="lnkBtnMovieReviews" runat="server" style="z-index: 1; left: 949px; top: 357px; width: 150px; position: absolute" OnClick="lnkBtnMovieReviews_Click">Movie Review List</asp:LinkButton>
        <asp:LinkButton ID="lnkBtnShowReviews" runat="server" style="z-index: 1; left: 949px; top: 392px; width: 150px; position: absolute" OnClick="lnkBtnShowReviews_Click">TV Show Review List</asp:LinkButton>
    </form>
</body>
</html>
