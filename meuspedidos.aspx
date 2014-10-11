<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meuspedidos.aspx.cs" Inherits="WebApplication1.meuspedidos" EnableSessionState="True"%>
<% if(Session["usuario"] == null) Response.Redirect("index.aspx"); %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meus Pedidos</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="estilo.css" rel="stylesheet" type="text/css" />
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" type="text/css">  
    <link href="Content/bootstrap.css" rel="stylesheet">  
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <style type="text/css">
        .auto-style1 {
            margin-left: 320px;
        }
        .auto-style2 {
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Menu Responsivo -->
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Ads III Pizza</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.aspx">Pagina Inicial</a></li>
                    <li><a href="pedido.aspx">Fazer Pedido</a></li>
                    <li><a href="meuspedidos.aspx">Meus Pedidos</a></li>
                </ul>
            </div>
                            <span id="idlogout">
                <asp:Label ID="LblUser" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                <br>
                                <asp:LinkButton ID="LinkButton1" runat="server">Logout</asp:LinkButton>
                            </span>
        </nav>
        <!-- Fim do Menu Responsivo -->

    <div>
    
        <br />
        <br />
                <h2 id="box">Meus Pedidos</h2>
          
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Fazer Pedido" OnClick="Button1_Click" />
    </div>
        <div class="auto-style2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PC-ALEX;Initial Catalog=ADSIIIPizza;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [codPedido], [dataPedido], [valorPedido], [statusEntrega], [tipoEntrega] FROM [Pedidos]"></asp:SqlDataSource>
        </div>
        <div class="auto-style1">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="codPedido" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="codPedidoLabel" runat="server" Text='<%# Eval("codPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dataPedidoLabel" runat="server" Text='<%# Eval("dataPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="valorPedidoLabel" runat="server" Text='<%# Eval("valorPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="statusEntregaLabel" runat="server" Text='<%# Eval("statusEntrega") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tipoEntregaLabel" runat="server" Text='<%# Eval("tipoEntrega") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="codPedidoLabel1" runat="server" Text='<%# Eval("codPedido") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dataPedidoTextBox" runat="server" Text='<%# Bind("dataPedido") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="valorPedidoTextBox" runat="server" Text='<%# Bind("valorPedido") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="statusEntregaTextBox" runat="server" Text='<%# Bind("statusEntrega") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tipoEntregaTextBox" runat="server" Text='<%# Bind("tipoEntrega") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <tr>
                            <td>Você não tem pedidos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="dataPedidoTextBox" runat="server" Text='<%# Bind("dataPedido") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="valorPedidoTextBox" runat="server" Text='<%# Bind("valorPedido") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="statusEntregaTextBox" runat="server" Text='<%# Bind("statusEntrega") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tipoEntregaTextBox" runat="server" Text='<%# Bind("tipoEntrega") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="codPedidoLabel" runat="server" Text='<%# Eval("codPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dataPedidoLabel" runat="server" Text='<%# Eval("dataPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="valorPedidoLabel" runat="server" Text='<%# Eval("valorPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="statusEntregaLabel" runat="server" Text='<%# Eval("statusEntrega") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tipoEntregaLabel" runat="server" Text='<%# Eval("tipoEntrega") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#d8d5d5;color: #000000;">
                                        <th runat="server">codPedido</th>
                                        <th runat="server">dataPedido</th>
                                        <th runat="server">valorPedido</th>
                                        <th runat="server">statusEntrega</th>
                                        <th runat="server">tipoEntrega</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="codPedidoLabel" runat="server" Text='<%# Eval("codPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dataPedidoLabel" runat="server" Text='<%# Eval("dataPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="valorPedidoLabel" runat="server" Text='<%# Eval("valorPedido") %>' />
                        </td>
                        <td>
                            <asp:Label ID="statusEntregaLabel" runat="server" Text='<%# Eval("statusEntrega") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tipoEntregaLabel" runat="server" Text='<%# Eval("tipoEntrega") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
