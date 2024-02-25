using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace Pre_project01
{
    public partial class customer_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into cust_tbl([C_name],[C_email],[C_mobile],[C_username],[C_pwd]) values(@name,@email,@mobile,@username,@pwd)", con);
                cmd.Parameters.AddWithValue("@name", custname.Text);
                cmd.Parameters.AddWithValue("@email", custemail.Text);
                cmd.Parameters.AddWithValue("@mobile", custmno.Text);
                cmd.Parameters.AddWithValue("@username", custuname.Text);
                cmd.Parameters.AddWithValue("@pwd", custpwd.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                string script = "alert('Registration succesfuly');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirectScript", script, true);
            }


            


            
            
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
          
        }
    }
}