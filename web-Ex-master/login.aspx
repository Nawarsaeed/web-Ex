<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Innovative Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href='//fonts.googleapis.com/css?family=Text+Me+One' rel='stylesheet' type='text/css'>
<!-- //web font -->
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
</head>
<body>
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
								<form  action="#" runat="server" method="post">
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
			<p> © 2016 Innovative Login Form . All rights reserved | Design by ?</p>
		</div>
		<!-- //copyright -->
	</div>	
	<!-- //main --> 
</body>
</html>

