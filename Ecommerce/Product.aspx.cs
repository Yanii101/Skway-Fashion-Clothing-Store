using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class WebForm4 : System.Web.UI.Page
    {
		String qry;
		MySqlCommand cmd;
		MySqlConnection conn;
		MySqlDataReader reader;
		public List<Product> productlist;
		String constring = System.Configuration.ConfigurationManager.ConnectionStrings["webappconstring"].ToString();
		protected void Page_Load(object sender, EventArgs e)
		{
			conn = new MySqlConnection(constring);
			conn.Open();
			qry = "";

			qry = "SELECT * FROM sywayfashion.product";
			cmd = new MySqlCommand(qry, conn);
			reader = cmd.ExecuteReader();

			List<String> image = new List<string>();
			List<String> productname = new List<string>();
			List<int> quantity = new List<int>();
			List<String> cost = new List<string>();
			List<String> details = new List<string>();

			Product prod;
			productlist = new List<Product>();
			while (reader.HasRows && reader.Read())
			{
				productname.Add(reader.GetString(reader.GetOrdinal("productname")));
				quantity.Add(reader.GetInt32(reader.GetOrdinal("quantity")));
				cost.Add(reader.GetString(reader.GetOrdinal("cost")));
				details.Add(reader.GetString(reader.GetOrdinal("details")));
				image.Add(reader.GetString(reader.GetOrdinal("image")));
			}
			var output = (productname.Zip(cost, (first, second) => new { Number = first, ABC = second })
						  .Zip(details, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = second })
						  .Zip(quantity, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = first.PQR, XYZ = second })
						  .Zip(image, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = first.PQR, XYZ = first.XYZ, Words = second })).ToList();

			foreach (var nw in output)
			{
				prod = new Product(nw.Number, nw.PQR, nw.ABC, nw.XYZ, nw.Words);
				productlist.Add(prod);
			}

		}
		public void Details(object sender, EventArgs e)
		{
			try
			{
				var value = this.HiddenField.Value;
				string[] ssize = value.Split('-');
				String name = ssize[0];
				String price = ssize[1];
				String details = ssize[2];
				String image = ssize[3];
				Session["name"] = name;
				Session["price"] = price;
				Session["details"] = details;
				Session["image"] = image;
				String email = (String)Session["email"];

				conn = new MySqlConnection(constring);
				conn.Open();
				qry = "";
				qry = "INSERT INTO sywayfashion.cart (item, email, price, details, image, quantity)" +
					"VALUES('" + name + "','" + email + "','" + price + "','" + details + "','" + image + "','" + "1" +  "')";
				cmd = new MySqlCommand(qry, conn);
				cmd.ExecuteReader();
				conn.Close();
			}catch(MySqlException ex)
			{
				Response.Write("<script>alert('Item Already In Cart');</script>");
			}
		}
	}
}
