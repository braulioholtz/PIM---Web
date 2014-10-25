<%@ Page Title="" Language="C#" MasterPageFile="~/includes/layout.Master" AutoEventWireup="true" CodeBehind="meuspedidosnew.aspx.cs" Inherits="WebApplication1.meuspedidosnew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="box">Meus Pedidos</h2>      
    
    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Fazer Pedido" OnClick="Button1_Click" />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PC-ALEX;Initial Catalog=ADSIIIPizza;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [codPedido], [dataPedido], [valorPedido], [statusEntrega], [tipoEntrega] FROM [Pedidos]"></asp:SqlDataSource>
  
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed">
    </asp:GridView>
  
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
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <tr>
                    <td>Você não tem pedidos.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
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
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="Tr2" runat="server" style="background-color:#d8d5d5;color: #000000;">
                                <th id="Th1" runat="server">codPedido</th>
                                <th id="Th2" runat="server">dataPedido</th>
                                <th id="Th3" runat="server">valorPedido</th>
                                <th id="Th4" runat="server">statusEntrega</th>
                                <th id="Th5" runat="server">tipoEntrega</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
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
</asp:Content>
