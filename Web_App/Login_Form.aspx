<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="Web_App.Login_Form" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="Design1.css" rel="stylesheet" />

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		<div class="overlay">
		<h1>Hello World.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
		Curabitur et est sed felis aliquet sollicitudin</p>
		<span>
			<p>login with social media</p>
			<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i> Login with Twitter</a>
		</span>
		</div>
	</div>
	
	<form runat="server">
		<div class="right">
		<h5>Login</h5>
		<p>Don't have an account? <a href="Index.aspx">Creat Your Account</a> it takes less than a minute</p>
		<div class="inputs">
           <label>Enter Email:<asp:TextBox ID="txt_username" runat="server"></asp:TextBox></label>
			<br>
			 <label>Enter Password:<asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox></label>
		</div>
			<br><br>
			<asp:Label ID="lbl_status" runat="server" Text="Label:"></asp:Label>
			<br>
            <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
	</div>
	
</div>
<!-- partial -->
  </form>
</body>
</html>

