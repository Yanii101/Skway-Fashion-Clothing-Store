using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        String name;
        String role;
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {
            role = "no";
            role = (String)Session["role"];
            name = (String)Session["uname"];
            email = (String)Session["email"];
            userlabel.Text = name;
            emailabel.Text = email;


            manageproduct.Style.Add("display", "none");
            manageuser.Style.Add("display", "none");
            orderhistory.Style.Add("display", "none");
            cart.Style.Add("display", "none");

           


            if (String.Equals(role, "admin"))
            {
                registration.Style.Add("display", "none");
                contact.Style.Add("display", "none");
                about.Style.Add("display", "none");
                orderhistory.Style.Add("display", "none");
                cart.Style.Add("display", "none");
                manageproduct.Style.Add("display", "inherit");
                manageuser.Style.Add("display", "inherit");
            }
            else
            if (String.Equals(role, "customer"))
            {
                manageproduct.Style.Add("display", "none");
                manageuser.Style.Add("display", "none");
                orderhistory.Style.Add("display", "inherit");
                cart.Style.Add("display", "inherit");

            }else
            {
                manageproduct.Style.Add("display", "none");
                manageuser.Style.Add("display", "none");
                orderhistory.Style.Add("display", "none");
                cart.Style.Add("display", "none");
                product.Style.Add("display", "none");

            }
        }

        protected void signout(object sender, EventArgs e)
        {
            registration.Style.Add("display", "inherit");
            contact.Style.Add("display", "inherit");
            about.Style.Add("display", "inherit");
            manageproduct.Style.Add("display", "none");
            manageuser.Style.Add("display", "none");
            orderhistory.Style.Add("display", "none");
            cart.Style.Add("display", "none");
            Session["uname"]="";
           Session["email"]="";
          
            Response.Redirect("Homepage.aspx");
            orderhistory.Style.Add("display", "none");
            cart.Style.Add("display", "none");
            product.Style.Add("display", "none");
        }



    }
}