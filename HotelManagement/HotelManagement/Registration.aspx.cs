using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*import this*/
using System.Data.SqlClient; //which provide all the classes of sql
using System.Configuration; //for configuration with database
using System.Security.Cryptography;
using System.Data;
using System.Drawing;

namespace HotelManagement
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (IsPostBack)
            {
                //here create the new sql connection to connect with database using connection string
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                //here open the connection
                conn.Open();
                //store the query in to the string checkuser
                string checkuser = "select * from UserData where UserName='" + tbName.Text + "'";
                // string checkuser = "select count(*) from UserData where UserName='"+tbName.Text+"'";
                //create a new command which give the command to data base to do which info provided by query
                SqlCommand com = new SqlCommand(checkuser, conn);
                //here i check if this user is already exist or not
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    Response.Write("User already exist");
                }
                conn.Close();


            }*/

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {  
                
                //To create globally unique id of user  that is 32 bit long string
                //Guid newGUID = Guid.NewGuid(); //here we will create the id as incremental number


                //create a connection
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;

                using (conn)
                {
                    bool exists = false;
                    conn.Open();
                    // create a command to check if the username exists
                    using (SqlCommand cmd = new SqlCommand("select count(*) from UserData where UserName = @UserName", conn))
                    {
                        cmd.Parameters.AddWithValue("UserName", tbName.Text);
                        exists = (int)cmd.ExecuteScalar() > 0;
                    }

                    // if exists, show a message error
                    if (exists)
                        LabelUserExist.Text = "This username is already exist.";
                    else
                    {
                        //query for all data which is inserted that put inside the database
                        string insertQuery = "insert into UserData (UserName,Email,Password,Country) values(@Uname, @email, @password, @country)";
                        //make a command
                        SqlCommand com = new SqlCommand(insertQuery, conn);
                        //add one by one property
                        // com.Parameters.AddWithValue("@ID", newGUID.ToString());
                        com.Parameters.AddWithValue("@Uname", tbName.Text);
                        com.Parameters.AddWithValue("@email", tbEmail.Text);
                        com.Parameters.AddWithValue("@password", tbPassword.Text);
                        com.Parameters.AddWithValue("@country", ddlCountry.SelectedItem.ToString());
                        com.ExecuteNonQuery();

                        //for redirect on another page
                        Response.Redirect("Login.aspx");

                        //close the connection
                        conn.Close();
                    }
                }
            }
              
                
        //if any error occur then this catch block code will be executed
                catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
            
        }
        

        protected void tbName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbCPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}



/* 1) Insert the table from the table option from header
 * 2)Then in first column give the name which property you want to add
 * 3)in second column add the textbox ddl etc you need 
 * 4)in third column add the validator which you need and give the id to them
 * - for connection of validator with textbox, ddl you have to control to validate make the controlvalidator id
 * 
 * for password - textmode -password
 */
/*After the registration page is complete make then we have to connect them with data base
 * add sql server database
 */
   