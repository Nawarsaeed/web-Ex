<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Changepass.aspx.cs" Inherits="_Default" %>

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
		<h1>Ändra ditt lösenord</h1>
        <h5>Ange ett nytt lösenord.</h5> 
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
										<asp:Textbox ID="txbOldPass" runat="server" type="password" name="OldPass" placeholder="Ditt gamla lösenord" ></asp:Textbox>
										<asp:Textbox ID="txbNewPass" runat="server" type="password" name="NewPass" placeholder="Ditt nya lösenord" ></asp:Textbox>
                                        <asp:Textbox ID="txbRepeat" runat="server" type="password" name="RepeatPass" placeholder="Skriv om lösenordet" ></asp:Textbox>
             
										 
										<div class="w3ls-submit">
											<div class="submit-text">
												<asp:Button ID="btnBytLösenord" runat="server" class="Spara"  Text="Spara" OnClick="btnBytLösenord_Click" /> 
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
		<!-- copyright -->
		<div class="copyright">
			<p> © 2016 Innovative Login Form . All rights reserved | Design by ?</p>
		</div>
		<!-- //copyright -->
	</div>	
	<!-- //main --> 
</asp:Content>

