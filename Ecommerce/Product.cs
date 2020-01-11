using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerce
{
    public class Product
    {

		public string Details { get; set; }
		public string Price { get; set; }
		public string Name { get; set; }
		public string Image { get; set; }
		public int Quantity { get; set; }

		public Product(string name, String price, String details, int quantity, String image)
		{
			Name = name;
			Details = price;
			Price = details;
			Image = image;
			Quantity = quantity;


		}

	}
}