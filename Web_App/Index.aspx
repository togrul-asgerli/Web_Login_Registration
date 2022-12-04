<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web_App.Index" %>

<!DOCTYPE html>
<html>
  <head runat="server">
    <title>Registration Form</title>
      <link href="Design.css" rel="stylesheet" />
  </head>
  <body>
    <h1>Registration Form</h1>
    <p>Please fill out this form with the required information</p>
     <p><a href="Login_Form.aspx">Back to Login</a></p>
    <form runat="server">
        <p>
            <asp:Label ID="lbl_result" runat="server"></asp:Label>
        </p>
      <fieldset>
        <label>Enter Your First Name:<asp:TextBox ID="txt_first_name" runat="server"></asp:TextBox></label>
        <label>Enter Your Last Name: <asp:TextBox ID="txt_last_name" runat="server"></asp:TextBox></label>
        <label>Enter Your Email: <asp:TextBox ID="txt_email" runat="server" type="email"></asp:TextBox></label>
        <label>Create a New Password: <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox></label>
      </fieldset>&nbsp;
         <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" />
    </form>
  </body>
</html>