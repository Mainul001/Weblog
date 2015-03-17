<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebBlog_2.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    
    <script type="text/javascript" src="tinymce/tinymce_4.1.9/tinymce/js/tinymce/tinymce.min.js"></script>
                    <script type="text/javascript">
                        tinymce.init({
                            selector: "textarea",
                            plugins: [
                                "advlist autolink lists link image charmap print preview anchor",
                                "searchreplace visualblocks code fullscreen",
                                "insertdatetime media table contextmenu paste"
                            ],
                            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
                        });
                    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table-striped">
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
                        <asp:Label ID="Author" runat="server" Text="Label"></asp:Label>

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
    </form>
    
    <form method="post" action="somepage">
                        <textarea name="content" style="width: 100%"></textarea>
                    </form> 

</body>
</html>
