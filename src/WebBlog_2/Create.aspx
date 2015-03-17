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
                    <asp:Label ID="ArticleTempLabel" runat="server" Text=""></asp:Label>
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

        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success btn-lg btn-block" OnClick="Button1_Click" />

    </form>


    <script src="Scripts/jquery-2.1.3.js"></script>
    <script src="Scripts/bootstrap.js"></script>


</body>
</html>
