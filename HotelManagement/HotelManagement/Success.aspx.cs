using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagement
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*here i will add the value in text box using the session which will arrive from the user.aspx.cs file*/
            LabelRoomNumber.Text = Session["RoomNumber"].ToString();
            LabelRoomType.Text = Session["RoomType"].ToString();
            LabelBed.Text = Session["Bed"].ToString();
            LabelUserName.Text = Session["UserName"].ToString();
            LabelPriceV.Text = Session["Price"].ToString();

            }
        

        protected void btnFinal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
           
        }
    }
}