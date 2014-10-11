<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro2.aspx.cs" Inherits="WebApplication1.cadastro2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro Final</title>

    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="estilo.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/masked-input.js"></script>

    <script type="text/javascript">
        jQuery.noConflict();
        (function ($) {
            $(function () {
                $("#TxtTel").mask("(99) 9999-9999"); //telefone
                $("#TxtTel2").mask("(99) 9999-9999"); //telefone 2
                $("#TxtCep").mask("99999-999"); //CPF
                $("#TxtCel").mask("(99)99999-9999");//Celular
            });
        })(jQuery);


    </script>
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
                    <li class="active"><a href="index.aspx">Pagina Inicial</a></li>
                    <li><a href="pedido.aspx">Fazer Pedido</a></li>
                    <li><a href="meuspedidos.aspx">Meus Pedidos</a></li>
                </ul>
            </div>
        </nav>
        <!-- Fim do Menu Responsivo -->

        <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
                <span class="sr-only">30% Complete</span>
            </div>
        </div>
        <h2 id="box">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cadastro - Endereço</h2>
        <div id="formulario">                      
            <div class="col-md-6">
                <div class="control-group">
                    <br />
                    <label class="control-label">Endereço</label>
                    <div class="controls">
                        <asp:TextBox ID="TxtEnde" runat="server" size="90" Width="378px"></asp:TextBox>

                    </div>
                </div>
                <br />

                <div class="control-group">
                    <label class="control-label">Bairro&nbsp; </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#333333" Text="Nº"></asp:Label>
                    &nbsp;<div class="controls">
                        <asp:TextBox ID="TxtBairro" runat="server" size="50" Width="230px"></asp:TextBox>

                        <asp:TextBox ID="TxtnumCasa" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>
                <br />
                <div class="control-group">
                    <label class="control-label">CEP</label>
                    <div class="controls">
                        <asp:TextBox ID="TxtCep" runat="server" size="20"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="control-group">
                    <label class="control-label">Complemento</label>
                    <div class="controls">
                        <asp:TextBox ID="TxtComplemento" runat="server" size="100" Width="368px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="control-group">
                    <label class="control-label">Telefone</label>
                    <div class="controls">
                        <asp:TextBox ID="TxtTel" runat="server" type="phone" size="12"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="control-group">
                    <label class="control-label">Telefone 2</label>
                    <div class="controls">
                        <asp:TextBox ID="TxtTel2" runat="server" type="phone" size="12"></asp:TextBox>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">Celular</label>
                    <div class="controls">
                        <asp:TextBox ID="TxtCel" runat="server" type="phone" size="13"></asp:TextBox>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label"></label>
                    <div class="controls">
                        <asp:Button ID="Button1" runat="server" class="btn btn-succes" Text="Enviar" OnClick="Button1_Click" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Limpar" OnClick="limpar_click" />
                        <br />
                        <br >
                    </div>
                </div>

            </div>
        </div>
        <br>
    </form>


</body>
</html>
