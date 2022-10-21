<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelManagement.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title></title>
       
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

     

    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 303px;
        }
        .auto-style4 {
            width: 303px;
            height: 63px;
        }
        .auto-style5 {
            width: 198px;
        }
        .auto-style6 {
            width: 303px;
            height: 68px;
        }
        .auto-style8 {
            height: 68px;
        }
        .auto-style25 {
            width: 198px;
            height: 63px;
        }
        .auto-style26 {
            height: 63px;
        }
        .auto-style28 {
            width: 198px;
            height: 32px;
            text-align: center;
        }
        .auto-style29 {
            width: 131px;
            height: 32px;
        }
        .auto-style30 {
            height: 32px;
        }
        .auto-style31 {
            width: 131px;
            text-align: right;
        }
        .auto-style33 {
            text-align: left;
            width: 131px;
            height: 63px;
        }


        
.header {
    overflow: hidden;
    background-color: #f1f1f1;
    padding: 5px 3px;
}

    .a {
        float: left;
        color: black;
        text-align: center;
        padding: 12px;
        text-decoration: none;
        font-size: 18px;
        line-height: 25px;
        border-radius: 4px;
    }

        

        .header a:hover {
            background-color: #ddd;
            color: black;
        }

        .header a.active {
            background-color: dodgerblue;
            color: white;
        }

.header-right {
    float: right;
}


@media screen and (max-width: 500px) {
    .header a {
        float: none;
        display: block;
        align-content: center;
        text-align: center;
    }

    .header-right {
        float: none;
    }
}


    </style>
</head>
<body>
     
    <div class="header" style="margin-left: auto; margin-right: auto; text-align: center; background-color: black; color:aliceblue; font-size: 45px;">
        <asp:Label ID="LabelLogin" class="align-items-center" runat="server" Text="LOGIN"></asp:Label>
        </div>

   
   

    <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="assets/images/img6.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

    <form id="form1" runat="server">
        <div class="table-responsive">
        <table class="table table-dark table-borderless">
            <tr>
                <td class="auto-style31">User Name : </td>
                <td class="auto-style5">
                    <asp:TextBox ID="tblName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvlName" runat="server" ControlToValidate="tblName" ErrorMessage="Please enter user name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">Password : </td>
                <td class="auto-style5">
                    <asp:TextBox ID="tblPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvlPassword" runat="server" ControlToValidate="tblPassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style28">
                    <asp:Button class="btn btn-danger" ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="100px" />
                &nbsp;<br />
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style25">
                    <asp:HyperLink ID="hlNewregister" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx">New User Register Here</asp:HyperLink>
                </td>
                <td class="auto-style26"></td>
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
