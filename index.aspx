<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/style.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script> 
    
</head>
<body>
    <form id="form1" runat="server" class="form-signin">
        <label class="control-label">Usuario</label>
        <asp:TextBox ID="TextBox1" runat="server" Width="164px" ValidateRequestMode="Enabled" CssClass="form-control"></asp:TextBox><br />
        <label class="control-label">Senha</label>
        <asp:TextBox ID="TextBox2" type="password" runat="server" Width="160px" ValidateRequestMode="Enabled" CssClass="form-control"></asp:TextBox>

        <br />
        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-success" OnClick="btnEntrar_Click" />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar"  CssClass="btn btn-primary" OnClick="btnCadastrar_Click"/>
        <br /><br />&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </form>
    
</body>
</html>
