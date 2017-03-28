<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
     <form id="form1" runat="server">
  <meta http-equiv="content-type"  content="10; url=login.aspx"/>

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
		<h1></h1>
        <h5>Du har loggat ut från websidan!</h5> 
		<div class="main-info">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0"><h2><a href="login.aspx">Klicka här för att gå tillbaka till loggningssidan.</a></h2></li>

					</ul>	
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
	<!-- //main --> 
    
</form>
</asp:Content>

