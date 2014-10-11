<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pedido.aspx.cs" Inherits="WebApplication1.pedido" EnableSessionState="True" %>
<% if(Session["usuario"] == null) Response.Redirect("index.aspx"); %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="Scripts/jquery-1.9.1.min.js"></script> 
        <script src="Scripts/bootstrap.min.js"></script>
        <link ="text/css" rel="stylesheet" href="/estilo.css" />

    <title>Pedido</title>

<script type="text/javascript">
    function disable() {
            document.getElementById("DropDownList2").disabled = true;
        }
            function enable(){ 
            document.getElementById("DropDownList2").disabled = false;
    }
</script>

    <style type="text/css">
        .auto-style1 {}
        #TextArea1 {
            height: 62px;
            width: 413px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <!-- Menu Responsivo -->
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Ads Pizza</a>
                </div>
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx">Pagina Inicial</a></li>
                        <li><a href="pedido.aspx">Fazer Pedido</a></li>
                        <li><a href="meuspedidos.aspx">Meus Pedidos</a></li>
                    </ul>
                </div>
                &nbsp;
                &nbsp;
                <span id="idlogout">
                <asp:Label ID="LblUser" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                <br>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    </span>
            </nav>
        <!-- Fim do Menu Responsivo -->
        <br />
        <br />
        <br />
        <br />
        <div class="col-md-6">
        <h2>Pedido</h2>
        <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%;">
                <span class="sr-only">33% Complete</span>
            </div>
        </div>
          
        <h2>Pizza</h2>        
        <label>Tipo</label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style1" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Onclick="disable()">Meia</asp:ListItem>
            <asp:ListItem Onclick="enabled()">Inteira</asp:ListItem>
        </asp:RadioButtonList>
        <label>Sabor</label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Width="420px" Height="21px">
            <asp:ListItem>Calabresa</asp:ListItem>
            <asp:ListItem>Pepperoni</asp:ListItem>
            <asp:ListItem>Mussarela</asp:ListItem>
            <asp:ListItem>Atum</asp:ListItem>
            <asp:ListItem>Portuguesa</asp:ListItem>
            <asp:ListItem>Baiana</asp:ListItem>
            <asp:ListItem>Frango c/ catupiry</asp:ListItem>
            <asp:ListItem>Picanha</asp:ListItem>            
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style1" Width="420px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="19px">
            <asp:ListItem>Calabresa</asp:ListItem>
            <asp:ListItem>Pepperoni</asp:ListItem>
            <asp:ListItem>Mussarela</asp:ListItem>
            <asp:ListItem>Atum</asp:ListItem>
            <asp:ListItem>Portuguesa</asp:ListItem>
            <asp:ListItem>Baiana</asp:ListItem>
            <asp:ListItem>Frango c/ catupiry</asp:ListItem>
            <asp:ListItem>Picanha</asp:ListItem>            
        </asp:DropDownList>

                <p> <label>Observações</label>
        <br />
                    <br />
        <textarea id="TextArea1" name="S1"></textarea></p>

    </div>
    </form>
</body>
</html>
