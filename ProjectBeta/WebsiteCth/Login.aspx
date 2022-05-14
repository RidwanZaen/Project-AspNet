<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebsiteCth.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Sensus Jakarta</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <asp:Table ID="Table1" runat="server" Height="137px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>       
    </form>
</body>
</html>
