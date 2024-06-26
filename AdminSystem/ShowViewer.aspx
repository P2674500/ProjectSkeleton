﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowViewer.aspx.cs" Inherits="_1Viewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TV Show Viewer</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </p>
        <p>
        <asp:Label ID="lblShowDetails" runat="server" style="z-index: 1; left: 255px; top: 152px; position: absolute" Text="TV Show Details" Font-Bold="True" Font-Overline="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblTitleText" runat="server" style="z-index: 1; left: 255px; top: 193px; width: 400px; position: absolute" Font-Bold="True" Font-Size="Large"></asp:Label>
        </p>
        <p>
        <asp:Image ID="imgCoverImage" runat="server" style="z-index: 1; left: 255px; top: 229px; width: 200px; height: 300px; position: absolute" />
        <asp:Label ID="lblGenreLabel" runat="server" style="z-index: 1; left: 600px; top: 223px; position: absolute" Text="Genre(s): "></asp:Label>
        <asp:Label ID="lblGenreText" runat="server" style="z-index: 1; left: 700px; top: 223px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblReleaseDate" runat="server" style="z-index: 1; left: 600px; top: 258px; position: absolute" Text="Release Date: "></asp:Label>
        <asp:Label ID="lblReleaseDateText" runat="server" style="z-index: 1; left: 700px; top: 259px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblCreators" runat="server" style="z-index: 1; left: 600px; top: 284px; position: absolute" Text="Creator(s):"></asp:Label>
        <asp:Label ID="lblCreatorsText" runat="server" style="z-index: 1; left: 700px; top: 283px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblStarActors" runat="server" style="z-index: 1; left: 600px; top: 311px; position: absolute" Text="Star Actors:"></asp:Label>
        <asp:Label ID="lblStarActorsText" runat="server" style="z-index: 1; left: 700px; top: 311px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblSeasons" runat="server" style="z-index: 1; left: 600px; top: 336px; position: absolute" Text="Seasons: "></asp:Label>
        <asp:Label ID="lblSeasonsText" runat="server" style="z-index: 1; left: 700px; top: 338px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 600px; top: 363px; position: absolute" Text="Rating: "></asp:Label>
        <asp:Label ID="lblRatingText" runat="server" style="z-index: 1; left: 700px; top: 365px; width: 400px; position: absolute"></asp:Label>
        <asp:Label ID="lblDescriptionText" runat="server" style="z-index: 1; left: 600px; top: 398px; width: 600px; height: 100px; position: absolute" BorderStyle="Groove"></asp:Label>
        </p>
        <p>
        <asp:Button ID="btnShowList" runat="server" OnClick="btnShowList_Click" style="z-index: 1; left: 255px; top: 563px; position: absolute" Text="Back to TV show list" />
        </p>
    </form>
</body>
</html>
