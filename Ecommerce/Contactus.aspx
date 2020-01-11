<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="Ecommerce.WebForm2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <!-- Material form login -->
    <div class="container">
<div class="card">

  <h5 class="card-header info-color white-text text-center py-4" style="background-color:#33b5e5;color:white">
    <strong>Contact Us</strong>
  </h5>

  <!--Card content-->
  <div class="card-body px-lg-5 pt-0" >

    <!-- Form -->
    <div class="text-center" style="color: #757575;">

      <!-- Email --><br />
        <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                       <asp:Label ID="fname" runat="server" Text="First Name"></asp:Label><br />
            <asp:TextBox ID="fnametxt" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnametxt" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                       <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label><br />
            <asp:TextBox ID="lnametxt" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnametxt" ErrorMessage="Please enter a last name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

        <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                       <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fnametxt" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

          <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                       <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label><br />
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fnametxt" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

          <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                                        <label for="materialContactFormMessage">Message</label>

                <textarea id="materialContactFormMessage" class="form-control md-textarea" rows="3"></textarea>
            </div>
                </div>
            </div>



      <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit" href="webform1.aspx">Submit</button>

      <!-- Register -->
      

    </div>
    <!-- Form -->

  </div>

</div>
        </div>
<!-- Material form login -->

    

</asp:Content>