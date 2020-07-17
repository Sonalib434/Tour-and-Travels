<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookingDetails.aspx.cs" Inherits="BookingDetails" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
    <title>Adventure - Book with us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
     <style type="text/css">
         .auto-style1 {
             font-weight: bold;
         }
         .auto-style2 {
             font-size: x-large;
             text-decoration: underline;
             color: #CC3300;
         }
         .auto-style4 {
             width: 377px;
         }
         .auto-style5 {
             width: 367px;
         }
         .auto-style6 {
             width: 333px;
         }
     </style>
  </head>
  <body>
    
	  
    <!-- END nav -->
      

    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp; <asp:Label ID="lblUserName" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label> 
         
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LbtnRegList" runat="server" Font-Bold="True" OnClick="LbtnRegList_Click">Registration List</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LbtnHotelList" runat="server" Font-Bold="True" OnClick="LbtnHotelList_Click">Hotel List</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LbtnPackageList" runat="server" Font-Bold="True" OnClick="LbtnPackageList_Click">Package List</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LbtnLogOut" runat="server" OnClick="LbtnLogOut_Click" Font-Bold="True" Font-Italic="True" Font-Size="Large">Log Out</asp:LinkButton>
&nbsp;<center><br />
        <br />
        <br />
            <strong class="auto-style1"><span class="auto-style2">Booking Details</span></strong>
        <br /><br />
        
        

        <asp:GridView ID="gvBooking" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="335px" Width="859px" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" OnPageIndexChanging="gvBooking_PageIndexChanging" PageSize="5" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Check">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Booking Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PackageId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PackageId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Registration Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RegistrationId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("RegistrationId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hotel Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("HotelId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("HotelId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Booking Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("BookingDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("BookingDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. of Person">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("NoOfPerson") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("NoOfPerson") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" BackColor="Yellow" Font-Bold="True" Font-Size="Medium" Width="68px" OnClick="btnEdit_Click"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="#FF3300" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="36px" Width="71px" OnClick="btnDelete_Click"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

    </center>
        <br />
        <br />

        </div>
        <br />
        <center>
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </center>
        <br />
        
        <div>
            <center>
                <asp:Panel ID="pnlBooking" runat="server">
                    <table style="width:100%;"><tr><td class="auto-style6">&nbsp;</td><td class="auto-style4" style="font-weight: 700">Package Id</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtPackId" runat="server" Width="252px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style4" style="font-weight: 700">Registration Id</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtRegId" runat="server" Width="252px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr><td class="auto-style6">&nbsp;</td><td class="auto-style4" style="font-weight: 700">Hotel Id</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtHotelid" runat="server" Width="252px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td></tr><tr><td class="auto-style6">&nbsp;</td><td class="auto-style4" style="font-weight: 700">Booking Date</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtBookingDate" runat="server" Width="252px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style4" style="font-weight: 700">No. of Person</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtNumofPerson" runat="server" Width="252px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style4" style="font-weight: 700">Amount</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtAmount" runat="server" Width="252px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5">
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="122px" OnClick="btnUpdate_Click" />
                                <asp:Label ID="lblupdate" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </center>
        </div>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
