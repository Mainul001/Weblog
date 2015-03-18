<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebBlog_2.Create" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />

    <link href="Content/bootstrap.css" rel="stylesheet" />


    <script src="tinymce/tinymce_4.1.9/tinymce/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: ".tinymce",
            theme: "modern",
            menubar: false,
            height: 300,
            resize: false,
            statusbar: false,
            plugins: ["advlist autolink lists charmap preview hr anchor",
                "pagebreak code nonbreaking table contextmenu directionality paste"],
            toolbar1: "styleselect | bold italic underline | pagebreak code preview | undo redo",
            toolbar2: "alignleft aligncenter alignright alignjustify | bullist numlist outdent indent"
        });
    </script>


    <script type="text/javascript">

        function GetContent(parameters) {
            return tinyMCE.get("tinyMCEEditor").getContent();
        }

    </script>


    <style type="text/css">
        .auto-style1 {
            font-size: 21px;
            font-weight: 300;
            line-height: 1.4;
            width: 139px;
            margin-bottom: 20px;
        }
    </style>


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
                    <a class="navbar-brand" href="Index.aspx">PI team</a>
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
        <div>
            <table class="table">
                <tr>
                    <td class ="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class ="auto-style1">
                        <asp:Label ID="AuthorLabel" runat="server" Text="Author"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
        </div>


        <table>
            <tr>
                <td>
                    
                </td>
            </tr>
        </table>


        <div>

            <p class="lead">
                Content
                <asp:TextBox ID="htmlEditorTxt" runat="server" ClientIDMode="Static"
                    TextMode="MultiLine" Rows="30" Style="width: 95%" CssClass="tinymce" />
            </p>

        </div>
        <div>
                <asp:Label ID="ArticleTempLabel" runat="server" class="alert alert-success" role="alert" Text=""></asp:Label>
            </div>

        <div class ="text-center">
            
            <div>
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success btn-lg" OnClick="Button1_Click" />
            </div>
        </div>

        

    </form>


    <script src="Scripts/jquery-2.1.3.js"></script>
    <script src="Scripts/bootstrap.js"></script>


</body>
</html>
