using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        String constring = @"Data Source=localhost; Database=sywayfashion; User ID=user; Password=2019";
        String qry;
        MySqlCommand cmd;
        MySqlConnection conn;
        MySqlDataReader reader;
        String prname, details, psession, pdetails, pimg;
        int pquantity, qsession;
        Double pcost, csession;
        int skuid;


        protected void Page_Load(object sender, EventArgs e)
        {
            using (MySqlConnection cn = new MySqlConnection(constring))
            {
                cn.Open();
                MySqlDataAdapter adp = new MySqlDataAdapter("select * from product", cn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView1.AutoGenerateColumns = false;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        protected void newproduct(object sender, EventArgs e)
        {
            conn = new MySqlConnection(constring);
            conn.Open();
            qry = "";
            qry = "INSERT INTO sywayfashion.product (productname, quantity, cost, details, image)" +
                "VALUES('" + pnametxt.Text + "','" + quantitytxt.Text + "','" + costtxt.Text + "','" + destext.Text + "','" + imgtxt.Text + "')";
            cmd = new MySqlCommand(qry, conn);
            cmd.ExecuteReader();
            conn.Close();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void updateproduct(object sender, EventArgs e)
        {
            conn = new MySqlConnection(constring);
            conn.Open();
            qry = "";
            int sku = Convert.ToInt32((sender as LinkButton).CommandArgument);
            testlbl.Text = sku.ToString();

            qry = "SELECT * FROM sywayfashion.product WHERE sku='" + sku + "'";
            testlbl.Text = sku.ToString();
            cmd = new MySql.Data.MySqlClient.MySqlCommand(qry, conn);
            reader = cmd.ExecuteReader();

            prname = "";
            psession = "";
            details = "";
            pimg = "";
            pquantity = 0;
            pcost = 0;
            while (reader.HasRows && reader.Read())
            {
                prname = reader.GetString(reader.GetOrdinal("productname"));
                pquantity = reader.GetInt32(reader.GetOrdinal("quantity"));
                pcost = reader.GetDouble(reader.GetOrdinal("cost"));
                details = reader.GetString(reader.GetOrdinal("details"));
                pimg = reader.GetString(reader.GetOrdinal("image"));
            }
            skunum.Text = sku.ToString();
            pnametxtbox.Text = prname;
            quantitytxtbox.Text = pquantity.ToString();
            costtxtbox.Text = pcost.ToString();
            detailtxtbox.Text = details;
            imgtxtbox.Text = pimg;


            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"$('#updatemodal').modal('show');");
            sb.Append(@"</script>");

            ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());

        }
        protected void updatingproduct(object sender, EventArgs e)
        {
            conn = new MySqlConnection(constring);
            conn.Open();
            qry = "";
            skuid = Int32.Parse(skunum.Text);
            qry = "update sywayfashion.product set productname='" + pnametxtbox.Text + "',quantity='" + quantitytxtbox.Text + "',cost='" + costtxtbox.Text + "',details='" + detailtxtbox.Text + "',image='" + imgtxtbox.Text + "' where sku='" + skuid + "';";
            cmd = new MySqlCommand(qry, conn);
            cmd.ExecuteReader();
            conn.Close();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }
        protected void deleteproduct(object sender, EventArgs e)
        {
            conn = new MySqlConnection(constring);
            conn.Open();
            qry = "";
            int sku = Convert.ToInt32((sender as LinkButton).CommandArgument);
            qry = "delete from sywayfashion.product where sku='" + sku + "';";
            cmd = new MySqlCommand(qry, conn);
            cmd.ExecuteReader();
            conn.Close();

        }



    }
}