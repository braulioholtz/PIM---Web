<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="lblUsuario" runat="server" AssociatedControlID="txtUsuario" Text="Usuário"></asp:Label>
    <asp:TextBox ID="txtUsuario" runat="server" ValidateRequestMode="Enabled" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="lblSenha" runat="server" AssociatedControlID="txtUsuario" Text="Senha"></asp:Label>
    <asp:TextBox ID="txtSenha" runat="server" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="Password"></asp:TextBox>

    <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-success" OnClick="btnEntrar_Click" />
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar"  CssClass="btn btn-primary" OnClick="btnCadastrar_Click"/>

    <asp:Label ID="lblValida" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>

</asp:Content>

