using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

namespace HotelManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           /* else
            {
                Response.Write("Username is not correct");
            }*/
           


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where UserName='" + tblName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1) //if user  exist then check for password
            {

                conn.Open();
                string checkPasswordQuery = "select password from UserData where UserName = '" + tblName.Text + "'";
                SqlCommand passComn = new SqlCommand(checkPasswordQuery, conn);
                //here i use replace which will replace the blank place with no place because if user give space in password
                //then system will identify
                string password = passComn.ExecuteScalar().ToString().Replace(" ", "");
                //if password is match
                if (password == tblPassword.Text)
                {
                    //Response.Write("Password is correct");
                    //making the new session for user page //this will remember user name at userhome page
                    Session["User1"] = tblName.Text;
                    //making the new session for user page //this will remember user name at adminhome page
                    Session["Admin1"] = tblName.Text;

                    //if this then redirect to admin control page
                    if (tblName.Text == "Admin" && tblPassword.Text == "12345")
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        //otherwise go to user page
                        Response.Redirect("UserHome.aspx");
                    }


                }
             
                conn.Close();
            }
        }
        
    }
}