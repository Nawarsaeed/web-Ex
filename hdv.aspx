<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hdv.aspx.cs" Inherits="hdv" %>

<html>
<head>
    <title></title>
    
    <link href="css/style_Main.css" rel="stylesheet" />


</head>
<body>
<nav>
  <ul>
    <li id="login">
      <a id="login-trigger" href="#">
        Log in <span>▼</span>
      </a>
      <div id="login-content">
        <form>
          <fieldset id="inputs">
            <input id="username" type="email" name="Email" placeholder="Your email address" required>   
            <input id="password" type="password" name="Password" placeholder="Password" required>
          </fieldset>
          <fieldset id="actions">
            <input type="submit" id="submit" value="Log in">
            <label><input type="checkbox" checked="checked"> Keep me signed in</label>
          </fieldset>
        </form>
      </div>                     
    </li>
    <li id="signup">
      <a href="#">Sign up FREE</a>
    </li>
  </ul>
</nav>
    <script src="Scripts/jquery-main.js"></script>
</body>
</html>
