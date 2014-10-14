<%@ Page Title="" Language="C#" MasterPageFile="~/includes/layout.Master" AutoEventWireup="true" CodeBehind="cadastronew.aspx.cs" Inherits="WebApplication1.cadastronew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="box">Cadastro</h2>
                                          
    <div class="col-md-3">
        <label class="control-label">Nome</label>
        <asp:TextBox ID="TextBox1" name="nome" type="text" placeholder="Insira seu nome" size="90" required="true" runat="server" AutoCompleteType="Search" CssClass="form-control"></asp:TextBox>

        <label class="control-label">Email</label>
        <asp:TextBox ID="TextBox2" runat="server" name="Email" type="email" placeholder="Insira seu Email" required="true" CssClass="form-control" ></asp:TextBox>

        <label class="control-label">Senha</label>
        <asp:TextBox ID="TextBox3" runat="server" name="Senha" type="password" placeholder="Insira sua senha" required="true" CssClass="form-control" ></asp:TextBox>

        <asp:Button ID="Button1" runat="server"  name="enviar" class="btn btn-success" Text="Enviar" OnClick="Button1_Click" />                        
        <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Limpar" />                       
    </div>

</asp:Content>
