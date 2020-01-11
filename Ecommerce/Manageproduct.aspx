<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manageproduct.aspx.cs" Inherits="Ecommerce.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label id="testlbl" runat="server" Text="Label"></asp:Label>
    <asp:TextBox runat="server" id="txtlbl"></asp:TextBox>

    <br /><br /><h3 style="color:#adb5bd">Manage Products</h3>
    <hr />
    <asp:Button runat="server" Text="Add Product" data-toggle="modal" data-target="#productmodal" />
    <hr />
    <div class="modal fade" id="productmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" >Add Product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
           <div class="col">
                    <div class="md-form">
                       <asp:Label ID="pname" runat="server" Text="Product Name"></asp:Label><br />
            <asp:TextBox ID="pnametxt" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pnametxt" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col">
                    <div class="md-form">
                       <asp:Label ID="quantity" runat="server" Text="Quantity"></asp:Label><br />
            <asp:TextBox ID="quantitytxt" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="quantitytxt" ErrorMessage="Please enter a last name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
               <div class="col">
                    <div class="md-form">
                       <asp:Label ID="cost" runat="server" Text="Cost"></asp:Label><br />
            <asp:TextBox ID="costtxt" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="costtxt" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="col">
                    <div class="md-form">
                       <asp:Label ID="des" runat="server" Text="Description"></asp:Label><br />
            <asp:TextBox ID="destext" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="destext" ErrorMessage="Please enter a first name"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="col">
                    <div class="md-form">
                       <asp:Label ID="img" runat="server" Text="Image"></asp:Label><br />
            <asp:TextBox ID="imgtxt" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="imgtxt" ErrorMessage="Please enter a image"
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
      </div>
      <div class="modal-footer">
          <asp:Button ID="Button1" runat="server" onClick="newproduct" Text="Add Product" />

      </div>
    </div>
  </div>
</div>


<div class="modal" id="updatemodal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Update Product</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

          <asp:Label runat="server" Text="Sku: "></asp:Label><asp:Label id="skunum" runat="server" Text=""></asp:Label><br />
          <asp:Label runat="server" Text="Product Name"></asp:Label><br />
          <asp:TextBox runat="server" id="pnametxtbox"></asp:TextBox><br /><br />
          <asp:Label runat="server" Text="Quantity"></asp:Label><br />
          <asp:TextBox runat="server" id="quantitytxtbox"></asp:TextBox><br /><br />
          <asp:Label runat="server" Text="Cost"></asp:Label><br />
          <asp:TextBox runat="server" id="costtxtbox"></asp:TextBox><br /><br />
          <asp:Label runat="server" Text="Details"></asp:Label><br />
          <asp:TextBox runat="server" id="detailtxtbox"></asp:TextBox><br /><br />
           <asp:Label runat="server" Text="Image"></asp:Label><br />
          <asp:TextBox runat="server" id="imgtxtbox"></asp:TextBox>
      </div>
      <div class="modal-footer">
          <asp:Button runat="server" class="btn btn-primary" onClick="updatingproduct"  CausesValidation="false" Text="Update Product" />
      </div>
     </div>
   </div>
 </div>






 <asp:GridView ID="GridView1" runat="server" class="tgrid">
     <Columns>
         <asp:Boundfield  DataField="sku" HeaderText="SKU"/>
         <asp:Boundfield  DataField="productname" HeaderText="Product Name"/>
         <asp:Boundfield  DataField="quantity" HeaderText="Quantity"/>
         <asp:Boundfield  DataField="cost" HeaderText="Cost"/>
         <asp:Boundfield  DataField="details" HeaderText="Details"/>
         <asp:Boundfield  DataField="image" HeaderText="Image"/>
         <asp:TemplateField>
             <ItemTemplate>
             <asp:LinkButton ID="update" Text="Update" runat="server" CausesValidation="false" CommandArgument='<%# Eval("sku") %>' onClick="updateproduct"/>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField>
             <ItemTemplate>
             <asp:LinkButton ID="delete" Text="Delete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("sku") %>' onClick="deleteproduct" />
             </ItemTemplate>
         </asp:TemplateField>

     </Columns>
 </asp:GridView>



</asp:Content>

