<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Ecommerce.WebForm4" %>
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

    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-8 col-lg-10 order-md-last">
    				<div class="row">


						
		    			<%for (int i = 0; i < productlist.Count; i++)
                            { %>
		    			<div class="col-sm-6 col-md-6 col-lg-4 ftco-animate">
		    				<div class="product">
		    					<a href="#" class="img-prod"><img id="productimage" class="img-fluid" src="images/<%= productlist[i].Image %>" alt="Colorlib Template">
		    						<div class="overlay"></div>
		    					</a>
		    					<div class="text py-3 px-3">
		    						<h3 id="productname"><%= productlist[i].Name %></h3>
		    						<div class="d-flex">
		    							<div class="pricing">
				    						<p class="price">$<span id="productprice"><%= productlist[i].Price%></span></p>
				    					</div>
				    					<div class="rating">
			    							<p class="text-right" id="description">
			    								<%= productlist[i].Details %>
			    							</p>
			    						</div>
			    					</div>
		    						<p class="bottom-area d-flex px-3">
		    							<input class="ml-auto" type="button" value="Add to Cart" onclick="AssignButtonClicked(this); Details;" 
                                   data-assigned-id="<%= productlist[i].Name +"-"+ productlist[i].Price +"-" +productlist[i].Details +"-" +productlist[i].Image%>" />
								<asp:Button id="btn" runat="server" style="display:none;" onclick="Details" Text="Button" />
		    						</p>
									</div>
								</div>
							</div>

						<%} %>
						<asp:HiddenField ID="HiddenField" runat="server" Value="5" Visible="true" />


		    					</div>
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
