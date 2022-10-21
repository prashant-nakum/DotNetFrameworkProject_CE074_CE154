<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="HotelManagement.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <style type="text/css">
        .auto-style2 {
            width: 495px;
        }
        .auto-style24 {
            text-align: left;
            width: 495px;
        }
        .auto-style25 {
            text-align: left;
        }
    </style>
</head>
<body>
     <div class="header" style="margin-left: auto; margin-right: auto; text-align: center; background-color: black; color:aliceblue; font-size: 45px;">
        <asp:Label ID="LabelUser" class="align-items-center" runat="server" Text="WELCOME TO OUR HOTEL"></asp:Label>
        </div>

     <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="assets/images/img18.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">


    <form id="form1" runat="server">
        
        <p class="text-end">
                    <asp:Button class="btn btn-danger" ID="btnULogout" runat="server" OnClick="btnULogout_Click" Text="Logout" />
                </p>
        <div class="table-responsive">
        <table class="table table-dark table-borderless">
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="LabelURoomType" runat="server" Text="RoomType"></asp:Label>
                </td>
                <td class="text-start">
                    <asp:Label ID="LabelDate" runat="server" Text="Select Date"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:DropDownList ID="ddlURoomType" runat="server">
                        <asp:ListItem Selected="True">Non-AC</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button class="btn btn-info btn-sm" ID="Button1" runat="server" Text="Select Date" OnClick="Button1_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" Height="150px" Width="200px" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="ShortMonth">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="LabelUBed" runat="server" Text="Bed"></asp:Label>
                </td>
                <td class="auto-style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:DropDownList ID="ddlUBed" runat="server">
                        <asp:ListItem Selected="True">Single</asp:ListItem>
                        <asp:ListItem>Double</asp:ListItem>
                        <asp:ListItem>Triple</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="LabelURoomNumber" runat="server" Text="Room Number"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style25">
                    <asp:DropDownList ID="DropDownListRoom" runat="server" DataSourceID="SqlDataSourceBookRoom" DataTextField="RoomNumber" DataValueField="RoomNumber">
                        <asp:ListItem Selected="True">Not Selected</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button class="btn btn-info" ID="btnUBookRoom" runat="server" OnClick="btnUBookRoom_Click" Text="View Room" />
                </td>
                <td>
                    <asp:Button class="btn btn-info" ID="ButtonBookRoom" runat="server" Text="Book Room" OnClick="ButtonBookRoom_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
            </div>
        <div class="auto-style25">
        <asp:GridView ID="GridViewRoom" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="204px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceBookRoom" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [RoomNumber] FROM [Rooms] WHERE (([RoomType] = @RoomType) AND ([Bed] = @Bed))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlURoomType" Name="RoomType" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlUBed" Name="Bed" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="LabelIfUserBooked" runat="server"></asp:Label>
        <p>
            <asp:Label ID="LabelBooked" runat="server"></asp:Label>
        </p>
    </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>
