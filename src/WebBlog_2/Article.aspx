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
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">PI team</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search"/>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <div class="container">
            <div>
                <h1>
                    <asp:Label ID="FirstArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <h4>
                    <asp:Label ID="FirstArticleAuthor" runat="server" Text=""></asp:Label>
                </h4>
                <p class="lead">
                    <asp:Label ID="FirstArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="SecondArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <h4>
                    <asp:Label ID="SecondArticleAuthor" runat="server" Text=""></asp:Label>
                </h4>
                <p class="lead">
                    <asp:Label ID="SecondArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="ThirdArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <h4>
                    <asp:Label ID="ThirdArticleAuthor" runat="server" Text=""></asp:Label>
                </h4>
                <p class="lead">
                    <asp:Label ID="ThirdArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="FourthArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <h4>
                    <asp:Label ID="FourthArticleAuthor" runat="server" Text=""></asp:Label>
                </h4>
                <p class="lead">
                    <asp:Label ID="FourthArticleBody" runat="server" Text=""></asp:Label>
                </p>
            </div>
            <div>
                <h1>
                    <asp:Label ID="FifthArticleTitle" runat="server" Text=""></asp:Label>
                </h1>
                <h4>
                    <asp:Label ID="FifthArticleAuthor" runat="server" Text=""></asp:Label>
                </h4>
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
