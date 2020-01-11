<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Ecommerce.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>
            <h1 class="mb-0 bread">My Cart</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>Product</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
					           <th>&nbsp;</th>
						      </tr>
						    </thead>
						    <tbody>
						      
								<%for(int i=0;i<cartlist.Count;i++){ %>
						      <tr class="text-center">
						      
						        
						        <td class="image-prod"><img class="img" src="images/<%= cartlist[i].Image %>"/></td>
						        
						        <td class="product-name">
						        	<h3><%= cartlist[i].Name %></h3>
						        	<p><%= cartlist[i].Details %></p>
						        </td>
						        
						        <td class="price">$<%= cartlist[i].Price %></td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
									   <%= cartlist[i].Quantity %>
										<asp:TextBox ID="pquantity" runat="server"></asp:TextBox>
					          	</div>
					          </td>
						        <td class="total">$15.70</td>

								     <td class="product-remove">
										<input class="ml-auto" type="button" value="Add to Cart" onclick="AssignButtonClicked(this); Details;" 
                                   data-assigned-id="<%= cartlist[i].Name%>" />
								<asp:Button id="btn" runat="server" style="display:none;" onclick="Update" Text="Button" />
						        </td>
						      </tr><!-- END TR-->
								<%} %>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
				<asp:HiddenField ID="HiddenField" runat="server" Value="5" Visible="true" />
    		<div class="row justify-content-center">
    			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Total</h3>	
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span  runat="server" id="ctotal">$17.60</span>
    					</p>
    				</div>
    				<p class="text-center"><asp:Button  class="btn btn-primary py-3 px-4" ID="Button1" runat="server" onclick="checkout" Text="Proceed to Checkout" /></p>
    			</div>
    		</div>
			</div>
		</section>

    <script type="text/javascript">
        function AssignButtonClicked(elem) {
            var id = $(elem).data('assigned-id');
            document.getElementById('<%= HiddenField.ClientID%>').value = id;
                console.log(document.getElementById('<%= HiddenField.ClientID%>').value)
                var clickButton = document.getElementById("<%= btn.ClientID %>");
            clickButton.click();

        }
</script>
</asp:Content>
