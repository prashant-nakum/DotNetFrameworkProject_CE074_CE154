<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookedRooms.aspx.cs" Inherits="HotelManagement.BookedRooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <style type="text/css">
        .auto-style1 {
            width: 458px;
        }
        .auto-style2 {
            width: 458px;
            text-align: left;
        }
    </style>

</head>
<body>

    <div class="header" style="margin-left: auto; margin-right: auto; text-align: center; background-color: black; color:aliceblue; font-size: 45px;">
        <asp:Label ID="LabelBookedRoom" class="align-items-center" runat ="server" Text="Booked Rooms Detail"></asp:Label>
        </div>
   

   <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="assets/images/img26.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                    
     
    <form id="form1" runat="server">

        <p class="text-end">
        <asp:Button class="btn btn-info" ID="btnBack" runat="server" OnClick="btnLogoutRoom_Click" Text="Back" />
        </p>


        <div class="table-responsive">
        <table class="table table-dark table-borderless">
        
            <tr>
                <td class="auto-style1" rowspan="5">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="RID" DataSourceID="SqlDataSourcebookedRoom" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="RID" HeaderText="RID" InsertVisible="False" ReadOnly="True" SortExpression="RID" />
                <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
                <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                <asp:BoundField DataField="Bed" HeaderText="Bed" SortExpression="Bed" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
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
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-start">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-start">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSourcebookedRoom" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [RID], [RoomNumber], [RoomType], [Bed], [UserName], [Date] FROM [BookedRooms]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelRemoveRoom" runat="server" Text="EnterRoomNumber"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxRemoveRoom" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRoomNumberRemove" runat="server" ControlToValidate="TextBoxRemoveRoom" ErrorMessage="Enter Room Number" ForeColor="Red" ValidationGroup="valGroupRemove"></asp:RequiredFieldValidator>
                </td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button class="btn btn-danger" ID="btnRemoveRoom" runat="server" OnClick="btnRemoveRoom_Click" Text="Remove Room" ValidationGroup="valGroupRemove" />
                </td>
            </tr>
        </table>
            </div>
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
