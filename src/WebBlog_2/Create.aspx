<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebBlog_2.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />

    <link href="Content/bootstrap.css" rel="stylesheet" />

    <script type="text/javascript" src="tinymce/tinymce_4.1.9/tinymce/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: "textarea",
            height: 400,
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "insertdatetime media table contextmenu paste"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });
    </script>


    <script type="text/javascript">

        function GetContent(parameters) {
            return tinyMCE.get("tinyMCEEditor").getContent();
        }

    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text="Author"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Content"></asp:Label></td>
                </tr>


            </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click" />

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Article"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:TextBox ID="TinyMceEditor" runat="server"></asp:TextBox>

    </form>


    <form method="post" action="somepage">
        <textarea id ="tinymce" name="content" style="width: 100%">Hello world</textarea>
    </form>


    <script src="Scripts/jquery-2.1.3.js"></script>
    <script src="Scripts/bootstrap.js"></script>


</body>
</html>
