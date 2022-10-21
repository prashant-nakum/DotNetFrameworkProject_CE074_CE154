using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace HotelManagement
{
    public partial class RoomsDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //for going back
        protected void ButtonRoomBack_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("AdminHome.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
        }
    }
}