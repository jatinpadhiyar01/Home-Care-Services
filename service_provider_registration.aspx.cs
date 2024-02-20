using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Pre_project01
{
    public partial class service_provider_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into service_provider_tbl ([Sp_name],[Sp_email],[Sp_mobile],[Sp_username],[Sp_pwd]) values(@name,@email,@mobile,@username,@pwd)", con);
            cmd.Parameters.AddWithValue("@name", spname.Text);
            cmd.Parameters.AddWithValue("@email",spemail.Text); 
            cmd.Parameters.AddWithValue("@mobile",spmno.Text);
            cmd.Parameters.AddWithValue("@username",spuname.Text);  
            cmd.Parameters.AddWithValue("@pwd",sppwd.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
               
                Response.Write("succesfuli insert");
            }
            catch
            {
                lbluserexist.Text = "please selete diffrent uare name.";
            }
            
        }

      
    }
}