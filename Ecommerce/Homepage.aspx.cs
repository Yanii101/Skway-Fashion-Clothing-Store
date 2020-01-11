using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String qry;
        String name;
        String role;
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signin(object sender, EventArgs e)
        {
            String constring = System.Configuration.ConfigurationManager.ConnectionStrings["webappconstring"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(constring);
            conn.Open();

            qry = "";
            qry = "SELECT * FROM sywayfashion.useregistration WHERE email='" + emailtxt.Text + "' AND password='" + pwordtxt.Text + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(qry, conn);
            reader = cmd.ExecuteReader();

            name = "";
            role = "";
            email = "";
            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("firstname"));
                role = reader.GetString(reader.GetOrdinal("role"));
                email = reader.GetString(reader.GetOrdinal("email"));

            }
            if (reader.HasRows)
            {
                Session["uname"] = name;
                Session["role"] = role;
                Session["email"] = email;
                Response.BufferOutput = true;
                Response.Redirect("Homepage.aspx", false);
            }
            else
            {
                Label txtLabel1 = new Label(); //Generating a label
                txtLabel1.Text = "Invalid username or password";
                txtLabel1.Style.Add("Color", "Red");
                p1.Controls.Add(txtLabel1);

            }
        }

    }
}