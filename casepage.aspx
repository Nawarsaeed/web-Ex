﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="casepage.aspx.cs" Inherits="casepage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        
    <![endif]-->
    <!--[if IE]><script type="text/javascript" src="js/excanvas.js"></script><![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>	
	<script type="text/javascript" src="js/fabric.js"></script>
	<script type="text/javascript" src="js/caseEditor.js"></script>
	<script type="text/javascript" src="js/jquery.miniColors.min.js"></script>
	
    <!-- Le styles -->
    <link type="text/css" rel="stylesheet" href="css/jquery.miniColors.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="https://afeld.github.io/emoji-css/emoji.css" rel="stylesheet">
	 <script type="text/javascript">
	 </script>
	 <style type="text/css">
		 			
	      body {
	        padding-top: 60px;
/*	        background-color: #000000;	        */
	      }
	      .color-preview {
	      	border: 1px solid #CCC;
	      	margin: 2px;
	      	zoom: 1;
	      	vertical-align: top;
	      	display: inline-block;
	      	cursor: pointer;
	      	overflow: hidden;
	      	width: 20px;
	      	height: 20px;
	      }
	      .rotate {  
		    -webkit-transform:rotate(90deg);
		    -moz-transform:rotate(90deg);
		    -o-transform:rotate(90deg);
		     filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=1.5); */
		    -ms-transform:rotate(90deg);		   
		}		
		.Arial{font-family:"Arial";}
		.Helvetica{font-family:"Helvetica";}
		.MyriadPro{font-family:"Myriad Pro";}
		.Delicious{font-family:"Delicious";}
		.Verdana{font-family:"Verdana";}
		.Georgia{font-family:"Georgia";}
		.Courier{font-family:"Courier";}
		.ComicSansMS{font-family:"Comic Sans MS";}
		.Impact{font-family:"Impact";}
		.Monaco{font-family:"Monaco";}
		.Optima{font-family:"Optima";}
		.HoeflerText{font-family:"Hoefler Text";}
		.Plaster{font-family:"Plaster";}
		.Engagement{font-family:"Engagement";}

	 </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
		<section id="typography">
		  <div class="page-header">
		    <h1>Design your phone Case now</h1>
		  </div>
		
		  <!-- Headings & Paragraph Copy -->
             
		  <div class="row">			
		    <div class="span3">
		    	
		    	<div class="tabbable"> <!-- Only required for left/right tabs -->
				  <ul class="nav nav-tabs">
				  	<li class="active"><a href="#tab1" data-toggle="tab">Case Options</a></li>				    
				    <li><a href="#tab2" data-toggle="tab">Design and Text</a></li>
				  </ul>
				  <div class="tab-content">
				     <div class="tab-pane active" id="tab1">
				     	<div class="well">
<!--					      	<h3>Tee Styles</h3>-->
<!--						      <p>-->
						      	<asp:DropDownList id="phoneTypes" runat="server"  OnSelectedIndexChanged="phoneTypes_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem value="1" Selected="False"> iPhone 5 </asp:ListItem>   
                                    <asp:ListItem value="2" Selected="False"> iPhone 4 </asp:ListItem>     
                                    <asp:ListItem value="3" Selected="False"> Samsumg Galaxy s3 </asp:ListItem>     
                                    <asp:ListItem value="4" Selected="False"> Iphone7 plus </asp:ListItem>  
                                    <asp:ListItem value="5" Selected="False"> Iphone7 </asp:ListItem>                  

								</asp:DropDownList>				
<!--						      </p>-->								
					      </div>
					      <div class="well">
							<ul class="nav" id="Color" runat="server">
								<li class="color-preview" title="White" style="background-color:#ffffff;"></li>
								<li class="color-preview" title="Dark Heather" style="background-color:#616161;"></li>
								<li class="color-preview" title="Gray" style="background-color:#f0f0f0;"></li>
								<li class="color-preview" title="Charcoal" style="background-color:#5b5b5b;"></li>
								<li class="color-preview" title="Black" style="background-color:#222222;"></li>
								<li class="color-preview" title="Heather Orange" style="background-color:#fc8d74;"></li>
								<li class="color-preview" title="Heather Dark Chocolate" style="background-color:#432d26;"></li>
								<li class="color-preview" title="Salmon" style="background-color:#eead91;"></li>
								<li class="color-preview" title="Chesnut" style="background-color:#806355;"></li>
								<li class="color-preview" title="Dark Chocolate" style="background-color:#382d21;"></li>
								<li class="color-preview" title="Citrus Yellow" style="background-color:#faef93;"></li>
								<li class="color-preview" title="Avocado" style="background-color:#aeba5e;"></li>
								<li class="color-preview" title="Kiwi" style="background-color:#8aa140;"></li>
								<li class="color-preview" title="Irish Green" style="background-color:#1f6522;"></li>
								<li class="color-preview" title="Scrub Green" style="background-color:#13afa2;"></li>
								<li class="color-preview" title="Teal Ice" style="background-color:#b8d5d7;"></li>
								<li class="color-preview" title="Heather Sapphire" style="background-color:#15aeda;"></li>
								<li class="color-preview" title="Sky" style="background-color:#a5def8;"></li>
								<li class="color-preview" title="Antique Sapphire" style="background-color:#0f77c0;"></li>
								<li class="color-preview" title="Heather Navy" style="background-color:#3469b7;"></li>							
								<li class="color-preview" title="Cherry Red" style="background-color:#c50404;"></li>
                                <li class="color-preview,em-anguished "></li>
							</ul>
						</div>			      
				     </div>				   
				    <div class="tab-pane" id="tab2">
				    	<div class="well" style="height:400px;">
				    		<div class="input-append">
							  <input class="span2" id="text-string" type="text" placeholder="add text here..."><button id="add-text" class="btn" title="Add text"><i class="icon-share-alt"></i></button>
                                <div style="height:0px;overflow:hidden">
                                    <input type="file" id="fileInput" name="fileInput"  />
                                </div>
                                <button type="button" style="border-radius:20%; background-color: aqua;" onclick="chooseFile();">Add your picture</button>
                                <script>
                                  function chooseFile() {
                                     $("#fileInput").click();
                                  }
                                </script>
                                <hr />
                                <img class="myImg" style="cursor:pointer; border-radius:5%" src="#" alt="your image">
							  
							  <hr>
							</div>
				    		<img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/1.jpg" runat="server" onclick="Changeimg">
				    		<img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/7.jpg">
			                <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/8.jpg">
			                <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/2.jpg">
			                <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/3.jpg">
			                <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/4.jpg">
			                <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/5.jpg">
			                <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/6.jpg">
                            <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/9.jpg">
                            <img style="cursor:pointer;width:90px;height:120px;" class="img-polaroid" src="img/phones/designs/10.jpg">                
				    	</div>				      
				    </div>
				  </div>
				</div>				
		    </div>		
		    <div class="span6">		    
		    		<div align="center" style="min-height: 32px;">
		    			<div class="clearfix">
							<div class="btn-group inline pull-left" id="texteditor" style="display:none;">							  
								<button id="font-family" class="btn dropdown-toggle" data-toggle="dropdown" title="Font Style"><i class="icon-font" style="width:19px;height:19px;"></i></button>		                      
							    <ul class="dropdown-menu" role="menu" aria-labelledby="font-family-X">
								    <li><a tabindex="-1" href="#" onclick="setFont('Arial');" class="Arial">Arial</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Helvetica');" class="Helvetica">Helvetica</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Myriad Pro');" class="MyriadPro">Myriad Pro</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Delicious');" class="Delicious">Delicious</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Verdana');" class="Verdana">Verdana</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Georgia');" class="Georgia">Georgia</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Courier');" class="Courier">Courier</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Comic Sans MS');" class="ComicSansMS">Comic Sans MS</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Impact');" class="Impact">Impact</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Monaco');" class="Monaco">Monaco</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Optima');" class="Optima">Optima</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Hoefler Text');" class="Hoefler Text">Hoefler Text</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Plaster');" class="Plaster">Plaster</a></li>
								    <li><a tabindex="-1" href="#" onclick="setFont('Engagement');" class="Engagement">Engagement</a></li>
				                </ul>
							    <button id="text-bold" class="btn" data-original-title="Bold"><img src="img/font_bold.png" height="" width=""></button>
							    <button id="text-italic" class="btn" data-original-title="Italic"><img src="img/font_italic.png" height="" width=""></button>
							    <button id="text-strike" class="btn" title="Strike" style=""><img src="img/font_strikethrough.png" height="" width=""></button>
							 	<button id="text-underline" class="btn" title="Underline" style=""><img src="img/font_underline.png"></button>
							 	<a class="btn" href="#" rel="tooltip" data-placement="top" data-original-title="Font Color"><input type="hidden" id="text-fontcolor" class="color-picker" size="7" value="#000000"></a>
						 		<a class="btn" href="#" rel="tooltip" data-placement="top" data-original-title="Font Border Color"><input type="hidden" id="text-strokecolor" class="color-picker" size="7" value="#000000"></a>
								  <!--- Background <input type="hidden" id="text-bgcolor" class="color-picker" size="7" value="#ffffff"> --->
							</div>							  
							<div class="pull-right" align="" id="imageeditor" style="display:none;">					  
							  <div class="btn-group">										      
							      <button class="btn" id="bring-to-front" title="Bring to Front"><i class="icon-fast-backward rotate" style="height:19px;"></i></button>
							      <button class="btn" id="send-to-back" title="Send to Back"><i class="icon-fast-forward rotate" style="height:19px;"></i></button>							      
							      <button id="remove-selected" class="btn" title="Delete selected item"><i class="icon-trash" style="height:19px;"></i></button>
							  </div>
							</div>			  
						</div>												
					</div>					  		
				<!--	EDITOR      -->	
				<div style="background-color: #ffffff;position: relative; top:20px;height:560px;">				
					<div id="phoneDiv" class="page" style="width: 282px; height: 590px; position: relative;left:25%; background-color: rgb(255, 255, 255);">
						<img id="phone" src="img/phones/iphone5A.png"></img>
						<div id="drawingArea" style="position: absolute;top:70px;left:30px;z-index: 10;width: 230px; height:450px;">					
							<canvas id="tcanvas" width=230 height="450" class="hover" style="-webkit-user-select: none;"></canvas>
						</div>
					</div>		
				</div>					
				<!--	/EDITOR		-->
		    </div>
		
		    <div class="span3">
		      <div class="well">
		      	<h3>Total Prices</h3>
			      <p>
			      	<table class="table">
			      		<tr>
			      			<td>Phone Case</td>
			      			<td align="right" id="CasePrice" runat="server">200</td>
                              <td align="right">kr</td>
			      		</tr>
			      		<tr>
			      			<td>Head Phone</td>
			      			<td align="right" id="DesginPrice" runat="server">50</td>
                              <td align="right">kr</td>
			      		</tr>			      		
			      		<tr>
			      			<td><strong>Total</strong></td>
			      			<td align="right" id="TotalPrice" runat="server">250</td>
                              <td align="right">kr</td>
			      		</tr>
			      	</table>			
			      </p>
					<button type="button" class="btn btn-large btn-block btn-success" name="addToTheBag" id="addToTheBag">Add to bag <i class="icon-briefcase icon-white"></i></button>
		      </div>		      		       		   
		    </div>
		
		  </div>
		
		</section>
    </div><!-- /container -->
    
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="js/bootstrap.min.js"></script>    
    <script type="text/javascript">


</script>
       <asp:Label ID="lblError" runat="server"></asp:Label>
    </form>
</body>
</html>
