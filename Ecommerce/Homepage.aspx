<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Ecommerce.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="jumbotron">
  <h1 class="display-4">Shop With Us</h1>
  <p class="lead">Number one clothing company that will <br />guarantee total satisfaction anything you shop</p>
  <p class="lead">
      <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal" style="background-color:transparent;border:2px solid #008CBA;color:white">
        LOGIN
     </button>
        <a class="btn btn-primary btn-lg" href="#" role="button">SIGN UP</a>
  </p>
</div>
    

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" >LOGIN</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
           <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                       <asp:Label ID="fname" runat="server" Text="email"></asp:Label><br />
            <asp:TextBox ID="emailtxt" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                       <asp:Label ID="lname" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="pwordtxt" CssClass="form-control" type="password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwordtxt" ErrorMessage="Please enter a last name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
              <asp:PlaceHolder ID="p1" runat="server"></asp:PlaceHolder>

        </form>
      </div>
      <div class="modal-footer">
          <asp:Button ID="Button1" runat="server" onclick="signin" Text="Login" />
                <!--  <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit" onclick="signin">Sign In</button>
                            <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Sign Up</button>-->

      </div>
    </div>
  </div>
</div>















    <div id="products">
        <h6 style="text-align:center;color:#adb5bd">Popular Products</h6>
        <h3 style="text-align:center">Our Products</h3>
        <p style="text-align:center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nostrum natus<br />excepturi fuga ullam accusantium vel ut eveniet aut consequatur laboriosam ipsam.</p>
    </div>
      

   <section class="about-cards-section">
  <div class="container">
       <div class="row">
      <div class="col-sm-4 card-wrapper">
        <div class="card border-0">
          <div class="position-relative rounded-circle overflow-hidden mx-auto custom-circle-image">
            <img class="w-100 h-100" src="images/jewel.jpeg" alt="Card image cap">
          </div>
          <div class="card-body text-center mt-4">
            <h3 class="text-uppercase card-title">Fancy Bracelets</h3>
            <p class="card-text">A short caption detailing an aspect of the brand which is worth mentioning.</p>
          </div>
        </div>
      </div>

      <div class="col-sm-4 card-wrapper">
        <div class="card border-0">
          <div class="position-relative rounded-circle overflow-hidden mx-auto custom-circle-image">
            <img class="w-100 h-100" src="images/bagh.jpeg" alt="Card image cap">
          </div>
          <div class="card-body text-center mt-4">
            <h3 class="text-uppercase card-title">Trening Bags</h3>
            <p class="card-text">A short caption detailing an aspect of the brand which is worth mentioning.</p>
          </div>
        </div>
      </div>

      <div class="col-sm-4 card-wrapper">
        <div class="card border-0">
          <div class="position-relative rounded-circle overflow-hidden mx-auto custom-circle-image">
            <img class="w-100 h-100" src="images/heelsw.jpeg" alt="Card image cap">
          </div>
          <div class="card-body text-center mt-4">
            <h3 class="text-uppercase card-title">Stunning Heels</h3>
            <p class="card-text">A short caption detailing an aspect of the brand which is worth mentioning.</p>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>



</asp:Content>