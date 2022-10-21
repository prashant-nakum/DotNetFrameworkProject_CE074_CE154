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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Rooms where RoomNumber='" + tboxRoomNumber.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Choose room you like..");
                }
                conn.Close();
            }


            if (Session["Admin1"] != null)
            {
                LabelAdminHome.Text = "WELCOME.." + Session["Admin1"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }



        }
        

        

        protected void btnAddRoom_Click(object sender, EventArgs e)
        {
           
            if (tboxRoomNumber.Text != "")
            {
                try
                {

                    //for add the room 

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    conn.Open();
                    //query for all data which is inserted that put inside the database
                    string insertQueryRoom = "insert into Rooms (RoomNumber, RoomType, Bed, Price) values(@RNumber, @RType, @Bed, @Price)";
                    //make a command
                    SqlCommand com = new SqlCommand(insertQueryRoom, conn);
                    //add one by one property
                    //com.Parameters.AddWithValue("@ID", newGUID.ToString());
                    com.Parameters.AddWithValue("@RNumber", tboxRoomNumber.Text);
                    com.Parameters.AddWithValue("@Rtype", ddlRoomType.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Bed", ddlBed.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Price", tboxPrice.Text);
                    com.ExecuteNonQuery();

                    Response.Write("Room is added successfully");

                    conn.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("Error : " + ex.ToString());
                }
                finally
                {
                    Response.Redirect("AdminHome.aspx");
                }
            }
            else
            {
                Response.Redirect("AdminHome.aspx");
            }

        }

        //for logout 
        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session["Admin1"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void btnShowRoom_Click(object sender, EventArgs e)
        {
               try
            {
                Response.Redirect("RoomsDetail.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }

        }
        //for delete the room
        protected void btnDeleteRoom_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;

            string query = "DELETE FROM Rooms WHERE  RoomNumber = @RoomNumber";

            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Parameters.AddWithValue("@RoomNumber", tboxRoomNumber.Text);
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
        }

        //for show the user
        protected void btnShowUser_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Manager.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
        }

        //for show the booked rooms
        protected void btnBookedRooms_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookedRooms.aspx");
        }
    }
}