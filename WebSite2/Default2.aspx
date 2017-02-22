<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <center><asp:Image ID="Image1" runat="server" ImageUrl="~/Bus1.jpg" Width="350px" />
        <asp:Image ID="Image3" runat="server" SubmitDisabledControls="True" ImageUrl="~/Greet.png" Width="150px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Bus2.jpg" Width="350px"/>
            <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Book Another Bus" OnClick="Button1_Click" />
            </center>
    </form>
</body>
</html>
