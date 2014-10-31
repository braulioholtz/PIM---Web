<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label class="control-label">Usuario</label>
        <asp:TextBox ID="TextBox1" runat="server" Width="164px" ValidateRequestMode="Enabled" CssClass="form-control"></asp:TextBox><br />
        <label class="control-label">Senha</label>
        <asp:TextBox ID="TextBox2" type="password" runat="server" Width="160px" ValidateRequestMode="Enabled" CssClass="form-control"></asp:TextBox>

        <br />
        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-success" OnClick="btnEntrar_Click" />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar"  CssClass="btn btn-primary" OnClick="btnCadastrar_Click"/>
        <br /><br />&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
</asp:Content>

