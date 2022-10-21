using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagement
{
    public partial class BookedRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRemoveRoom_Click(object sender, EventArgs e)
        {
            //remove that room from the booked rooms table which you want
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;


            try
            {
                string query = "DELETE FROM BookedRooms WHERE  RoomNumber = @RoomNumber";

                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Parameters.AddWithValue("@RoomNumber", TextBoxRemoveRoom.Text);
                        cmd.Connection = con;
                        cmd.CommandText = query;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }

            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
            finally
            {
                Response.Redirect("BookedRooms.aspx");
            }

        }

        //for going back
        protected void btnLogoutRoom_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("AdminHome.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }
        }
    }
}