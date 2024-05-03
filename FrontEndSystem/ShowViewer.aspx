﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowViewer.aspx.cs" Inherits="ShowViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TV Show Page</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        <asp:Label ID="lblReviews" runat="server" Font-Bold="True" style="z-index: 1; left: 25px; top: 585px; position: absolute" Text="Reviews:"></asp:Label>
        <asp:ListBox ID="lstShowReviewList" runat="server" style="z-index: 1; left: 22px; top: 617px; position: absolute; height: 158px; width: 488px; right: 191px" Font-Italic="True" Font-Underline="True"></asp:ListBox>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="z-index: 1; left: 521px; top: 620px; position: absolute" Text="Add a review" width="106px" />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 524px; top: 694px; position: absolute"></asp:Label>
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 267px; top: 533px; position: absolute; height: 42px; width: 281px; " Text="View the highest rated shows and movies!" />
        </p>
        <div>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </div>
        <p>
            &nbsp;</p>
        <p>
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 799px; top: 50px; position: absolute; height: 50px; " />
        <asp:Label ID="lblShowDetails" runat="server" style="z-index: 1; left: 20px; top: 152px; position: absolute" Text="Show Details" Font-Bold="True" Font-Overline="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblTitleText" runat="server" style="z-index: 1; left: 17px; top: 193px; width: 400px; position: absolute" Font-Bold="True" Font-Size="Large"></asp:Label>
        </p>
        <p>
        <asp:Image ID="imgCoverImage" runat="server" style="z-index: 1; left: 22px; top: 229px; width: 200px; height: 300px; position: absolute" />
        <asp:Label ID="lblGenreText" runat="server" style="z-index: 1; left: 372px; top: 223px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblGenreLabel" runat="server" style="z-index: 1; left: 265px; top: 223px; position: absolute" Text="Genre(s): "></asp:Label>
        <asp:Label ID="lblDescriptionText" runat="server" style="z-index: 1; left: 267px; top: 398px; width: 600px; height: 100px; position: absolute" BorderStyle="Groove"></asp:Label>
        <asp:Label ID="lblReleaseDate" runat="server" style="z-index: 1; left: 267px; top: 258px; position: absolute" Text="Release Date: "></asp:Label>
        <asp:Label ID="lblReleaseDateText" runat="server" style="z-index: 1; left: 367px; top: 259px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblCreators" runat="server" style="z-index: 1; left: 266px; top: 284px; position: absolute" Text="Creator(s):"></asp:Label>
        <asp:Label ID="lblStarActors" runat="server" style="z-index: 1; left: 266px; top: 311px; position: absolute" Text="Star Actors:"></asp:Label>
        <asp:Label ID="lblCreatorsText" runat="server" style="z-index: 1; left: 366px; top: 283px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblStarActorsText" runat="server" style="z-index: 1; left: 366px; top: 311px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblSeasons" runat="server" style="z-index: 1; left: 266px; top: 336px; position: absolute" Text="Seasons: "></asp:Label>
        <asp:Label ID="lblSeasonsText" runat="server" style="z-index: 1; left: 365px; top: 338px; width: 400px; position: absolute"></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 266px; top: 363px; position: absolute" Text="Rating: "></asp:Label>
        <asp:Label ID="lblRatingText" runat="server" style="z-index: 1; left: 363px; top: 365px; width: 400px; position: absolute"></asp:Label>
        </p>
    </form>
</body>
</html>
