using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
	public partial class WebForm5 : System.Web.UI.Page
	{
		String qry;
		MySqlCommand cmd;
		MySqlConnection conn;
		MySqlDataReader reader;
		public List<Product> cartlist;
		String constring = System.Configuration.ConfigurationManager.ConnectionStrings["webappconstring"].ToString();

		protected void Page_Load(object sender, EventArgs e)
		{
			conn = new MySqlConnection(constring);
			conn.Open();
			qry = "";
			String email = (String)Session["email"];
			qry = "SELECT * FROM sywayfashion.cart";
			cmd = new MySqlCommand(qry, conn);
			reader = cmd.ExecuteReader();
			String dbemail = "";
			List<String> image = new List<string>();
			List<String> productname = new List<string>();
			List<int> quantity = new List<int>();
			List<String> cost = new List<string>();
			List<String> details = new List<string>();
			int ttotal = 0;
			int total = 0;
			String cost2;
			int intcost2;
			int quantity2;
			Product prod;
			cartlist = new List<Product>();
			while (reader.HasRows && reader.Read())
			{
				dbemail = reader.GetString(reader.GetOrdinal("email"));
				if (email.Equals(dbemail))
				{
					quantity2 = reader.GetInt32(reader.GetOrdinal("quantity"));
					cost2 = reader.GetString(reader.GetOrdinal("price"));
					intcost2 = Int32.Parse(cost2);
					productname.Add(reader.GetString(reader.GetOrdinal("item")));
					quantity.Add(reader.GetInt32(reader.GetOrdinal("quantity")));
					cost.Add(reader.GetString(reader.GetOrdinal("price")));
					details.Add(reader.GetString(reader.GetOrdinal("details")));
					image.Add(reader.GetString(reader.GetOrdinal("image")));
					total = quantity2 * intcost2;
					ttotal = ttotal + total;
				}
			}
			ctotal.InnerText = ttotal.ToString();
			var output = (productname.Zip(cost, (first, second) => new { Number = first, ABC = second })
						  .Zip(details, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = second })
						  .Zip(quantity, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = first.PQR, XYZ = second })
						  .Zip(image, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = first.PQR, XYZ = first.XYZ, Words = second })).ToList();

			foreach (var nw in output)
			{
				prod = new Product(nw.Number, nw.PQR, nw.ABC, nw.XYZ, nw.Words);
				cartlist.Add(prod);
			}


		}
		public void Update(object sender, EventArgs e)
		{
			var value = this.HiddenField.Value;
			string[] ssize = value.Split('-');
			String name = ssize[0];
			String test = pquantity.Text;
			string[] qarray = test.Split(',');
			int iq = Int32.Parse(qarray[0]);

			String email = (String)Session["email"];
			conn = new MySqlConnection(constring);
			conn.Open();
			qry = "";
			qry = "update sywayfashion.cart set quantity='" + iq + "' where email='" + email + "' and item='" + name + "';";
			cmd = new MySqlCommand(qry, conn);
			cmd.ExecuteReader();
			conn.Close();
			conn.Open();
			qry = "";
			qry = "delete from sywayfashion.cart where quantity='" + 0 + "';";
			cmd = new MySqlCommand(qry, conn);
			cmd.ExecuteReader();
			conn.Close();
			Page.Response.Redirect(Page.Request.Url.ToString(), true);
		}
		public void checkout(object sender, EventArgs e)
		{
			String email = (String)Session["email"];
			conn = new MySqlConnection(constring);
			conn.Open();
			qry = "";
			qry = "INSERT INTO sywayfashion.orders (email)" +
					"VALUES('" + email + "')";
			cmd = new MySqlCommand(qry, conn);
			cmd.ExecuteReader();
			conn.Close();


			/******/
			conn.Open();
			qry = "";
			qry = "SELECT * FROM sywayfashion.cart";
			cmd = new MySqlCommand(qry, conn);
			reader = cmd.ExecuteReader();
			List<String> productname = new List<string>();
			List<int> quantity = new List<int>();
			Product prod;
			cartlist = new List<Product>();
			while (reader.HasRows && reader.Read())
			{
				productname.Add(reader.GetString(reader.GetOrdinal("item")));
				quantity.Add(reader.GetInt32(reader.GetOrdinal("quantity")));
			}
			var output = (productname.Zip(quantity, (first, second) => new { Number = first, ABC = second })).ToList();

			foreach (var nw in output)
			{
				prod = new Product(nw.Number, null, null, nw.ABC, null);
				conn = new MySqlConnection(constring);
				conn.Open();
				qry = "";
				qry = "INSERT INTO sywayfashion.orderuser (email, item, quantity, total, time)" +
					"VALUES('" + email + "','" + nw.Number + "','" + nw.ABC + "','" + ctotal.InnerText + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "')";
				cmd = new MySqlCommand(qry, conn);
				cmd.ExecuteReader();
				conn.Close();
			}
			/******/
			conn = new MySqlConnection(constring);
			conn.Open();
			qry = "";
			qry = "delete from sywayfashion.cart where email='" + email + "';";
			cmd = new MySqlCommand(qry, conn);
			cmd.ExecuteReader();
			conn.Close();
			Page.Response.Redirect(Page.Request.Url.ToString(), true);

		}
	}
}
	
