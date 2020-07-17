<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookingConfirmation.aspx.cs" Inherits="BookingConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            box-sizing:border-box;
            font-size: x-large;
            font-weight: bold;
            text-decoration: underline;
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <span class="auto-style1">Booking Confirmation</span>  
    </center>
        <br />
        <br />
    </div>
        <div>
            <center>
                <asp:DetailsView ID="DetailsView1" runat="server" Width="573px" Height="345px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Bold="True" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                </asp:DetailsView>
            </center>
        </div>
    </form>
</body>
</html>
