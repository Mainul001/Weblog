<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebBlog_2.Index" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>

<body>
    
    

<form id="form1" runat="server">
    <div>
        
        <table>
            <tr></tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="New Post" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="View Post" /></td>
            </tr>
        </table>
    
    </div>
    </form>
    
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>

</body>

</html>
