<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpass.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
    <!-- js -->
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
		<h1>Glömt ditt lösenord! </h1>
        <h5>Ange din epost-adress.</h5> 
		<div class="main-info">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0"><h2><span>Välkommen!</span></h2></li>
				
					</ul>	
					<div  class="clear" > </div>	
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="agileits-login">
								<form  action="#" runat="server" method="post">
									<asp:Textbox ID="txbforget" runat="server"  type="text" class="email" name="Email" placeholder="Enter your Email" required=""></asp:Textbox>
									<div class="wthree-text"> 
										<ul> 
											<li>
												<label class="anim">
													<a id="Undertext" runat="server"> Ange dittanvändarnamn eller den e-postadress som du använde när du registrerade dig. Vi skickar ett e-postmeddelande med ditt användarnamn och en länk där du kan återställa ditt lösenord.</a> 
												</label> 
											</li>
										</ul>
                                        
										<div class="clear"> </div>
									</div>  
									<div class="w3ls-submit">
										<div class="submit-text">
											<asp:Button ID="btnForget" type="submit" runat="server" Text="Återställ" onclick="btnForget_Click" />
										</div>
                                        <div class="message">
                                            <asp:Label ID="lblError" runat="server" />
                                        </div>
                                        
									</div>
                                    
                                    	
								</form>
							</div> 
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="login-top sign-top">
								<div class="agileits-login">
									
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
			<p> © 2016 Innovative Login Form . All rights reserved | Design by ?</p>>
		</div>
		<!-- //copyright -->
	</div>	
	<!-- //main --> 
</asp:Content>

