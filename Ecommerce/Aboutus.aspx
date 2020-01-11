<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Ecommerce.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar" class="container-fluid">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About Us.aspx">About Us</asp:HyperLink>&nbsp
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Contact Us.aspx">Contact Us</asp:HyperLink>&nbsp
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>&nbsp
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Products.aspx">Products</asp:HyperLink>&nbsp
            <asp:HyperLink class="active" runat="server" NavigateUrl="Homepage.aspx">Home</asp:HyperLink>&nbsp
        </div>

        <div class="contactus">
            <h1>What we are About</h1><br /><br />
            <p style="line-height:26pt">
                Our pursuit is progress for people everywhere. That's why we take a closer look at things, ask questions and think ahead.

We've been around for more than 350 years, yet our majority owners are still the descendants of Friedrich Jacob Merck, the man who founded our company in Darmstadt, Germany in 1668.

Since then, we have become a truly global company, with around 52,000 employees in 66 countries working on breakthrough solutions and technologies. In 2018, we invested a total of € 2.2 billion in research and development.

We are Merck. The only exceptions are the United States and Canada. Here we operate as EMD Serono in the Biopharma business, as MilliporeSigma in the Life Science business, and as EMD Performance Materials in the materials business.
            </p>

        </div>

        
         

    </form>
</body>
</html>
