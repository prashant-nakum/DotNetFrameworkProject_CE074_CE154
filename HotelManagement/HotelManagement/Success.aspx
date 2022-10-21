<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="HotelManagement.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <style type="text/css">
        .auto-style2 {
            width: 386px;
        }
    </style>
</head>
<body>
    <div class="header" style="margin-left: auto; margin-right: auto; text-align: center; background-color: black; color:aliceblue; font-size: 45px;">
        <asp:Label ID="LabelSuccess" class="align-items-center" runat="server" Text="SUCCESSFULLY REGISTERED YOUR ROOM"></asp:Label>
        </div>

    <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="assets/images/img21.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">



    <form id="form1" runat="server">

        <div class="text-start">
            <p class="text-end">
        <asp:Button class="btn btn-info" ID="btnFinal" runat="server" OnClick="btnFinal_Click" Text="Logout" />
            </p>
        <div>

        
        <div>
           <div class="table-responsive">
        <table class="table table-dark table-borderless">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LabelRN" runat="server" Text="Your Room Number "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelRoomNumber" runat="server" Text=" "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LabelRT" runat="server" Text="RoomType"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelRoomType" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LabelB" runat="server" Text="Bed"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelBed" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LabelP" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelPriceV" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style2">
                        <asp:Label ID="LabelUName" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelUserName" runat="server" Text=" "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>

                    </td>
                </tr>
            </table>
        </div>
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
