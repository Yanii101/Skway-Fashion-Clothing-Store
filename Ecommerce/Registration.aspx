<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Ecommerce.WebForm6" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <!-- Material form login -->
    <div class="container">
<div class="card">

  <h5 class="card-header info-color white-text text-center py-4" style="background-color:#33b5e5;color:white">
    <strong>Sign Up</strong>
  </h5>

  <!--Card content-->
  <div class="card-body px-lg-5 pt-0" >

    <!-- Form -->
    <form class="text-center" style="color: #757575;" action="/WebForm1.aspx" action="webform1.aspx">

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



      <div class="md-form">
       <asp:Label ID="email" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="emailtxt" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailtxt" ErrorMessage="Please enter a email"
                ForeColor="Red"></asp:RequiredFieldValidator>
           
      </div>

        <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                         <asp:Label ID="dob" runat="server" Text="Date of Birth   MM/DD/YYYY"></asp:Label><br />
            <asp:TextBox ID="dobtxt" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ControlToValidate="dobtxt" Display="Dynamic" ErrorMessage="less than 18 "
                MaximumValue="1/1/2080" MinimumValue="01/01/1994" SetFocusOnError="True"
                Type="Date" ForeColor="red"></asp:RangeValidator>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                     <asp:Label ID="Label5" runat="server" Text="Phone Number  ###-###-####"></asp:Label><br />
                     <asp:TextBox ID="phonetxt" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                ErrorMessage="Invalid Number" ControlToValidate="phonetxt" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="red"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>


      <!-- Password -->
      <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                         <asp:Label ID="password" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="passwordv" CssClass="form-control" type="password" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="pvalidate" runat="server" ControlToValidate="passwordv" 
                ValidationExpression="(?=.{8,})[a-zA-Z]+[^a-zA-Z]+|[^a-zA-Z]+[a-zA-Z]+"
                Display="Dynamic" ErrorMessage="Password must be 8 characters and have both letters and numbers."

                ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                          <asp:Label ID="confirmpassword" runat="server" Text="Confirm Password"></asp:Label><br />
            <asp:TextBox ID="cpassword" type="password" CssClass="form-control" runat="server"></asp:TextBox>

            <asp:CompareValidator ID="CompareValidator1" runat="server"
                ControlToValidate="cpassword" ForeColor="Red"
                ControlToCompare="passwordv"
                ErrorMessage="The password must be the same"
                ToolTip="Password must be the same" />
                    </div>
                </div>
            </div>


      <div class="d-flex justify-content-around">
     
      </div>

      <!-- Sign in button -->

     <!-- <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit" href="webform1.aspx" onclick="signup">Sign up</button>-->
        <asp:Button runat="server" Text="Button" onclick="signup"/>
      <!-- Register -->
      

    </form>
    <!-- Form -->

  </div>

</div>
        </div>
<!-- Material form login -->

    


</asp:Content>
