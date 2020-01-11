using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signup(object sender, EventArgs e)
        {
            registeruser();
        }
        private void registeruser()
        {
            String constring = System.Configuration.ConfigurationManager.ConnectionStrings["webappconstring"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(constring);
            conn.Open();
            qry = "";
            qry = "INSERT INTO sywayfashion.useregistration (firstname, lastname, email, phonenumber, dateofbirth, password, role)" +
                "VALUES('" + fnametxt.Text + "','" + lnametxt.Text + "','" + emailtxt.Text + "','" + phonetxt.Text + "','" +
                dobtxt.Text + "','" + passwordv.Text + "','" + "customer" + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(qry, conn);
            cmd.ExecuteReader();
            conn.Close();
            Response.Redirect("Homepage.aspx");

        }
    }
}