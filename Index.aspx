<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

    <link href="css/reset.css" rel="stylesheet" /> <!-- CSS reset -->
    <link href="css/style-index.css" rel="stylesheet" /> <!-- Gem style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Log In &amp; Sign Up Form</title>
</head>
<body>
	<header role="banner">
		<div id="cd-logo"><a href="#0"><img src="img/cd-logo.svg" alt="Logo"></a></div>

		<nav class="main-nav">
			<ul>
				<!-- inser more links here -->
                <li><a class="cd-name" id="OurUser" visible="false" runat="server"></a></li>
				<li><a class="cd-signin" id="signin" href="login.aspx" runat="server" visible="false">Logga in</a></li>
				<li><a class="cd-signup" id="signup" href="regist.aspx" runat="server" visible="false">Registrera</a></li>
			</ul>
		</nav>
	</header>

	
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/main.js"></script> <!-- Gem jQuery -->
</body>
</asp:Content>