<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center><div style="width: 750px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;background-color: gainsboro">
    
        <h1>BUS BOOKING</h1></div>
        <div style="width: 750px"><p>
            From:
            <asp:Label ID="Label1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px"><asp:ListItem Text="Vellore" Value="0" />
</asp:DropDownList>
        </p>
        </div>
        <p style="width: 750px">
            To:
            <asp:Label ID="Label2" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
            <asp:ListItem Text="Mumbai" Value="Mumbai" />
            <asp:ListItem Text="Tirupati" Value="Tirupati" />
            <asp:ListItem Text="Chennai" Value="Chennai" />
            <asp:ListItem Text="Bangalore" Value="Bangalore" />
            <asp:ListItem Text="Pondicherry" Value="Pondicherry" />
            <asp:ListItem Text="Ooty" Value="Ooty" />
            <asp:ListItem Text="Pune" Value="Pune" />
            <asp:ListItem Text="Madurai" Value="Madurai" />
            <asp:ListItem Text="Coorg" Value="Coorg" />
            <asp:ListItem Text="Hyderabad" Value="Hyderabad" />
            <asp:ListItem Text="Jaipur" Value="Jaipur" />
    </asp:DropDownList></p>
        <p style="width: 750px">
            Travel Date:
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="200px" NextPrevFormat="ShortMonth" Width="250px" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </p>
        <p style="width: 750px">
            Primary Passenger Name:
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </p>
        <br />
        <p style="width: 750px">
        No. of Seats
            <asp:Label ID="Label4" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Text="1" Value="1" />
            <asp:ListItem Text="2" Value="2" />
            <asp:ListItem Text="3" Value="3" />
            <asp:ListItem Text="4" Value="4" />
            <asp:ListItem Text="5" Value="5" />
            <asp:ListItem Text="6" Value="6" />
            <asp:ListItem Text="7" Value="7" />
            <asp:ListItem Text="8" Value="8" />
            <asp:ListItem Text="9" Value="9" />
            <asp:ListItem Text="10" Value="10" />
        </asp:DropDownList>
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox></p>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search Buses" />
        <br />
        <fieldset style="width:250px;">
            <legend>Buses Found</legend>
             <asp:RadioButtonList ID="rblQualification" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="600px"></asp:RadioButtonList>   
        </fieldset><br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Book Now" OnClick="Button2_Click" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Bus]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Destination]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Passenger]"></asp:SqlDataSource>
        <br /></center>
    </form>
</body>
</html>
