<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="HotelManagement.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 336px;
        }
        .auto-style4 {
            width: 336px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style24 {
            width: 100%;
            align-items: center;
            height: 29px;
            text-align: left;
        }
        .auto-style27 {
            height: 20px;
            width: 220px;
            text-align: right;
        }
        .auto-style31 {
            width: 276px;
            text-align: left;
        }
        .auto-style32 {
            text-align: left;
            width: 276px;
            height: 26px;
        }
        .auto-style33 {
            width: 276px;
        }
    </style>
</head>
<body>
    
    <div class="header" style="margin-left: auto; margin-right: auto; text-align: center; background-color: black; color:aliceblue; font-size: 45px;">
        <asp:Label ID="LabelAdminHome" class="align-items-center" runat="server" Text="Admin"></asp:Label>
        </div>

    <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="assets/images/img27.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">


    <form id="form1" runat="server">
        
       
        <p class="text-end">
                    <asp:Button class="btn btn-info" ID="btnBookedRooms" runat="server" Text="BookedRoom" OnClick="btnBookedRooms_Click" />
                    <asp:Button class="btn btn-danger" ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click1" />
                </p>
        
       
        <div class="table-responsive">
        <table class="table table-dark table-borderless">
            <tr>
                <td class="auto-style33">
        <div class="auto-style24">
            <asp:Label ID="LabelRoomNumber" runat="server" Text="Room Number"></asp:Label>
        </div>
                </td>
                <td class="auto-style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:TextBox ID="tboxRoomNumber" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="LabelRoomType" runat="server" Text="Room Type"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:DropDownList ID="ddlRoomType" runat="server">
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem Selected="True">Non-AC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="LabelBed" runat="server" Text="Bed"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:DropDownList ID="ddlBed" runat="server">
                        <asp:ListItem Selected="True">Single</asp:ListItem>
                        <asp:ListItem>Double</asp:ListItem>
                        <asp:ListItem>Triple</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="LabelPrice" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:TextBox ID="tboxPrice" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Button class="btn btn-info" ID="btnAddRoom" runat="server" Text="AddRoom" OnClick="btnAddRoom_Click" />
                    <asp:Button class="btn btn-info" ID="btnShowRoom" runat="server" OnClick="btnShowRoom_Click" Text="Show Room" />
                </td>
                <td class="auto-style5">
                    <asp:Button class="btn btn-danger" ID="btnDeleteRoom" runat="server" OnClick="btnDeleteRoom_Click" Text="DeleteRoom" />
                    <asp:Button class="btn btn-info" ID="btnShowUser" runat="server" OnClick="btnShowUser_Click" Text="Show User" />
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

