<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profilepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
     <link href="css/style.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	   </script>
<!-- //js -->


	<!-- main -->
	<div class="main">
		<h1>Din profil</h1>
        <h5>Ange dina profiluppgifter.</h5> 
		<div class="main-info">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0"><h2><span>Välkommen kära kund!</span></h2></li> 
					</ul>	
					<div class="clear"> </div>	
					<div class="resp-tabs-container">
						
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="login-top sign-top">
								<div class="agileits-login">
									<form action="#" runat="server" method="post">
										<asp:Textbox ID="txbFirsName" runat="server" type="text" name="Firstname" placeholder="Förnamn" ></asp:Textbox>
										<asp:Textbox ID="txbSurName" runat="server"  type="text" class="Surname" name="Surname" placeholder="Efternamn" ></asp:Textbox>
										<asp:Textbox ID="txbAdress" runat="server"  type="text" class="password" name="Adress" placeholder="Adress" ></asp:Textbox>
                                        <asp:Textbox ID="txbCity" runat="server"  type="text" class="city" name="city" placeholder="Stad" ></asp:Textbox>
                                        <asp:Textbox ID="txbZip" runat="server"  type="text" class="zip" name="Zip" placeholder="Postnummer" ></asp:Textbox>
                                        <asp:Textbox ID="txbCountry" runat="server"  type="text" class="Country" name="Country" placeholder="Land" ></asp:Textbox>
                                        <asp:Textbox ID="txbMobilenumber" runat="server"  type="text" class="Mobilenumber" name="Mobilenumber" placeholder="Mobilnummer" ></asp:Textbox>
										 
										<div class="w3ls-submit">
											<div class="submit-text">
												<asp:Button ID="btnSpara" runat="server" class="Spara"  Text="Spara " OnClick="btnSpara_Click" /> 
										   </div>
                                            <div class="message">
                                              <asp:Label ID="lblError" runat="server" />
                                             </div>

										</div>
                                        <br />
									</form> 
								</div>  
							</div>
						</div>
					</div>	
				</div>
				<div class="clear"> </div>
			</div>  
		</div>
		
	</div>	
	<!-- //main --> 
</asp:Content>

