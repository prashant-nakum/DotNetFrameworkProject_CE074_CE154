<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HotelManagement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <style type="text/css">
 
    </style>
</head>
<body>
    <div class="reg1" style="margin-left: auto; margin-right: auto; text-align: center; background-color: black; color:aliceblue; font-size: 45px;">
        <asp:Label ID="LabelRegistration" class="align-items-center" runat="server" Text="Registration"></asp:Label>
        </div>

    <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="assets/images/img10.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

    <form id="form1" runat="server">
        <div class="table-responsive">
        <table class="table table-dark table-borderless">
            <tr>
                <td id="uName" class="auto-style24">User Name : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbName" runat="server" OnTextChanged="tbName_TextChanged" Width="180px"></asp:TextBox>
                </td>
               

                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="User name is required" ForeColor="Red" ControlToValidate="tbName"></asp:RequiredFieldValidator>
                    </td>
                <td>
                    <asp:Label ID="LabelUserExist" runat="server" Text=" "></asp:Label>
                </td>
            </tr>
            <tr>
                <td id="uemail" class="auto-style25">E-mail : </td>
                <td class="auto-style16">
                    <asp:TextBox ID="tbEmail" runat="server" Width="180px" OnTextChanged="tbEmail_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email id is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Enter valid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td id="upassword" class="auto-style24">Password :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbPassword" runat="server" Width="180px" TextMode="Password" OnTextChanged="tbPassword_TextChanged"></asp:TextBox>
                </td>
                <td class="text-start">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required" ForeColor="Red" ControlToValidate="tbPassword"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td id="ucpassword" class="auto-style26">Confirm-Password :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbCPassword" runat="server" Width="180px" TextMode="Password" OnTextChanged="tbCPassword_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="rfvCPassword" runat="server" ErrorMessage="Re-enter password" ForeColor="Red" ControlToValidate="tbCPassword"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="cmpvCPassword" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbCPassword" ErrorMessage="Both Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td id="ucountry" class="auto-style27">Country : </td>
                <td class="auto-style22">
                    <asp:DropDownList ID="ddlCountry" runat="server" Width="180px" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Select Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Select country" ForeColor="Red" ControlToValidate="ddlCountry" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button class="btn btn-info" ID="btnRegister" runat="server" OnClick="btnSubmit_Click" Text="Register" />
                    <input class="btn btn-danger" id="btnReset" type="reset" value="Reset" /></td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <div>
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



    <p>
        &nbsp;</p>
</body>
</html>

