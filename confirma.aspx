<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirma.aspx.cs" Inherits="WebApplication1.confirma" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro - Confirmação</title>

    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="estilo.css" rel="stylesheet" type="text/css" />
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" type="text/css">  
    <link href="Content/bootstrap.css" rel="stylesheet">  
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <style type="text/css">
        .controls {
            margin-left: 40px;
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
                        <li class="active"><a href="index.aspx">Pagina Inicial</a></li>
                        <li><a href="pedido.aspx">Fazer Pedido</a></li>
                    </ul>
                </div>
            </nav>
        <!-- Fim do Menu Responsivo -->

                    
                    <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                        <span class="sr-only">100% Complete</span>
                            </div>
                        </div>
                    <br />
                    <br />
                        <br />
                            <br />
                  <div class="col-md-6">
                      
                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cadastro</h2>
                      <br />
                    
                    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cadastro concluido com sucesso</h4>
                    <br />
                    
                    <div class="control-group">
                    <div class="controls">                                
                                &nbsp;&nbsp;&nbsp;&nbsp;                                
                                <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Fazer pedido" OnClick="Button1_Click1" />                                
                    </div>
                  </div>
            
                    <br>             
        
         </div> 

    </form>
</body>
</html>
