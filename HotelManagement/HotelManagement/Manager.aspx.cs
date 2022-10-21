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
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //for going back
        protected void ButtonManagerBack_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("AdminHome.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
        }

        //if admin want to delete the user
        protected void ButtonDeleteUser_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            string querydeleteuser = "DELETE FROM UserData WHERE ID = @id";

            try
            {
                using (con2)
                {
                    using(SqlCommand cmd1 = new SqlCommand())
                    {
                        cmd1.Parameters.AddWithValue("@id", TextBoxDeleteUser.Text);
                        cmd1.Connection = con2;
                        cmd1.CommandText = querydeleteuser;
                        con2.Open();
                        cmd1.ExecuteNonQuery();
                        con2.Close();
                        
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
            finally
            {
                Response.Redirect("Manager.aspx");
            }
        }
    }
}
/* manager.aspx contain the grid view(table) to show the all data of user and contain
 * sql data source that is used to make connection b/w registration form and the manager.aspx file
 */