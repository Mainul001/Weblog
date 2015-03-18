<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="WebBlog_2.Article" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <h1>
                    <asp:Label ID="FirstArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <p class="lead">
                    <asp:Label ID="FirstArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="SecondArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <p class="lead">
                    <asp:Label ID="SecondArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="ThirdArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <p class="lead">
                    <asp:Label ID="ThirdArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="FourthArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <p class="lead">
                    <asp:Label ID="FourthArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="FifthArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <p class="lead">
                    <asp:Label ID="FifthArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
        </div>
    </form>


    <script src="Scripts/jquery-2.1.3.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>

</html>
