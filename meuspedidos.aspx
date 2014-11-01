<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="meuspedidos.aspx.cs" Inherits="meuspedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 id="box">Meus Pedidos</h2>      
    
    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Fazer Pedido" />
  
    <asp:GridView ID="grvPedidos" runat="server" CssClass="table table-condensed">
    </asp:GridView>
  
    </asp:Content>

