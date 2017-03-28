<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
    <form id="form1" runat="server">
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
		<h1>Logga in </h1>
        <h5>Ange dina inloggningsuppgifter.</h5> 
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
									<asp:Textbox ID="txbUser" runat="server"  type="text" class="email" name="Email" placeholder="Email" required=""></asp:Textbox>
									<asp:Textbox ID="txbPass" runat="server"  type="password" class="password" name="Password" placeholder="Password" required=""></asp:Textbox>
									<div class="wthree-text"> 
										<ul> 
											<li>
												<label class="anim">
													<input type="checkbox" class="checkbox" id="ccbReme" runat="server" Check="false"/>
													<span> fortsätt att vara inloggad</span> 
												</label> 
											</li>
											<li> <a href="forgetpass.aspx">Glömt lösenord?</a> </li>
                                            
                                            
										</ul>
                                        
										<div class="clear"> </div>
									</div>  
									<div class="w3ls-submit">
										<div class="submit-text">
										<asp:Button ID="btnLogin" type="submit" runat="server" Text="Logga in" onclick="btnLogin_Click" />

                                        <ul>
                                            <li>
                                                    <a href="regist.aspx" style="float:right; color:aqua;">Skapa ett konto!</a>
                                            </li>
                                        </ul>
                                        	       
                                             
										</div>
                                        
									</div>
                                   <div class="message">
                                     <asp:Label ID="lblError" runat="server" />
                                     <asp:Label ID="lblWork" runat="server" />
                                   </div>
                                    	
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
			<p> © 2016 Innovative Login Form . All rights reserved | Design by ?</p>
		</div>
		<!-- //copyright -->
	</div>	
	<!-- //main --> 
    
</form>
    
</asp:Content>

