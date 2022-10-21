using System;
using System.Collections;
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
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //when we goto that page then calender is not visible when i click on button then visible
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }


            //here this will check if username is not null
            
            if (Session["User1"] != null)
            {
                LabelUser.Text = "WELCOME TO HOTEL.." + Session["User1"].ToString();
                
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
            try
            {   

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;

                using (conn)
                {
                    bool exists = false;
                    conn.Open();
                    // create a command to check if the user for same username booked room or not
                    using (SqlCommand cmd = new SqlCommand("select count(*) from BookedRooms where UserName = @UserName", conn))
                    {
                        cmd.Parameters.AddWithValue("UserName", Session["User1"].ToString());
                        exists = (int)cmd.ExecuteScalar() > 0;
                    }

                    // if exists, show a message 
                    if (exists)
                        LabelIfUserBooked.Text = "you already booked rooms.....";
                    
                        //query for all data which is inserted that put inside the database
                        string queryview = "select * from BookedRooms where UserName = '" + Session["User1"].ToString() + "'";
                        //make a command
                        SqlCommand com = new SqlCommand(queryview, conn);
                       
                    
                        com.ExecuteNonQuery();
                    SqlDataReader rdr = com.ExecuteReader();
                    while (rdr.Read())
                    {
                        LabelBooked.Text = "  R NO. : " + rdr.GetValue(1).ToString() + "  RType : "+ rdr.GetValue(2).ToString() + "  Bed : "+ rdr.GetValue(3).ToString() + "  UserName : " + rdr.GetValue(5).ToString();
                    }
                    //close the connection
                    conn.Close();
                    
                }
            }


            //if any error occur then this catch block code will be executed
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
        }





        protected void btnULogout_Click(object sender, EventArgs e)
        {
            //this will make the session null and go back
            Session["User1"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void btnUBookRoom_Click(object sender, EventArgs e)
        {
            //for check how many room is empty
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
           //this will select the free room which type and bed is same as user selected
            string showroomquery = "Select * from Rooms where RoomType = @RType AND Bed = @Bed";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd1 = new SqlCommand(showroomquery, con))
                    {

                        cmd1.Parameters.AddWithValue("@RType", ddlURoomType.SelectedItem.ToString());
                        cmd1.Parameters.AddWithValue("@Bed", ddlUBed.SelectedItem.ToString());
                        //add the command text 
                        cmd1.CommandText = showroomquery;
                        //open the connection
                        con.Open();
                        //sqldatareader which will read the data which is selected by the query
                        SqlDataReader rdr = cmd1.ExecuteReader();
                       //compare that data with the datasource for how many room of user required type is empty add that number into the dropdown list
                        GridViewRoom.DataSource = rdr;
                        //add that data into the grid view
                        GridViewRoom.DataBind();
                        //close the data reader
                        rdr.Close();
                        //close the connection
                        con.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }

            /* Add the room number in dropdown list --for that i create a data source in which i give the condition to user selected roomtype and bed how many
             rooms are empty and add that room into the dropdown list*/

        }

        protected void ButtonBookRoom_Click(object sender, EventArgs e)
        {
            //this will send the sesssion to next page for user to 
            Session["RoomType"] = ddlURoomType.SelectedItem.ToString();
            Session["Bed"] = ddlUBed.SelectedItem.ToString();
            Session["RoomNumber"] = DropDownListRoom.SelectedItem.ToString();
            Session["UserName"] = Session["User1"].ToString();

            //insert that room into the BookedRooms table
            
            try
             {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                //query for all data which is inserted that put inside the database
                string insertQueryRoom = "insert into BookedRooms (RoomNumber, RoomType, Bed, UserName,Date) values(@RNumber, @RType, @Bed, @Uname, @date)";
                //make a command
                SqlCommand com = new SqlCommand(insertQueryRoom, conn);
                //add one by one property
                //com.Parameters.AddWithValue("@ID", newGUID.ToString());
                /*com.Parameters.AddWithValue("@Rid", DropDownListRoom.SelectedItem.ToString());*/
                com.Parameters.AddWithValue("@RNumber", DropDownListRoom.SelectedItem.ToString());
                com.Parameters.AddWithValue("@RType", ddlURoomType.SelectedItem.ToString());
                com.Parameters.AddWithValue("@Bed", ddlUBed.SelectedItem.ToString());
                com.Parameters.AddWithValue("@Uname", Session["User1"].ToString());
                com.Parameters.AddWithValue("@date", TextBox1.Text);
                com.ExecuteNonQuery();

                // Response.Redirect("RoomsDetail.aspx");
                Response.Write("Room is added successfully");

                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }


            /*here i will get the price value of that perticular room*/
            try
            {
                SqlConnection conn1 = new SqlConnection();
                conn1.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;

                conn1.Open();
                string pricequery = "select Price from Rooms where RoomNumber = @RNumber";
                SqlCommand com1 = new SqlCommand(pricequery, conn1);
                com1.Parameters.AddWithValue("@RNumber", DropDownListRoom.SelectedItem.ToString());
                //string password = com1.ExecuteScalar().ToString().Replace(" ", "");

                com1.ExecuteNonQuery();
                //sql data reader is used to read the data from the query
                SqlDataReader rdr = com1.ExecuteReader();
                while (rdr.Read())
                {
                    Session["Price"] = rdr.GetValue(0).ToString();
                }
                conn1.Close();


            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }

            //delete the booked room from the available rooms

            string query = "DELETE FROM Rooms WHERE  RoomNumber = @RoomNumber";

            try
            {
             SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Parameters.AddWithValue("@RoomNumber", DropDownListRoom.SelectedItem.ToString());
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
                Response.Redirect("Success.aspx");
            }
        }

        //this button for calender
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible=true;
            }
        
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        //this is for selected date is placed in textbox
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        //this is for the last past month day user can't select
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.White;
            }
        }
    }
}