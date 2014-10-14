<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="WebApplication1.cadastro" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
        <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="Scripts/jquery-1.9.1.min.js"></script> 
        <script src="Scripts/bootstrap.min.js"></script>
        <link ="text/css" rel="stylesheet" href="/estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Menu Responsivo -->

        <!-- Fim do Menu Responsivo -->            
        
        <h2 id="box">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cadastro</h2>
        <div id="formulario">                                             
            <div class="col-md-6">
                <div class="control-group">
                    <br>
                    <label class="control-label">Nome</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBox1" name="nome" type="text" placeholder="Insira seu nome" size="90" required="true" runat="server" AutoCompleteType="Search" Width="373px"></asp:TextBox>
                          
                    </div>
                </div>
                <br />
                
                <div class="control-group">
                  <label class="control-label">Email</label>
                        <div class="controls">
                            <asp:TextBox ID="TextBox2" runat="server" name="Email" type="email" placeholder="Insira seu Email" required="true"></asp:TextBox>
                   
                        </div>
                </div>
                <br />
                           
                <div class="control-group">
                  <label class="control-label">Senha</label>
                        <div class="controls">
                            <asp:TextBox ID="TextBox3" runat="server" name="Senha" type="password" placeholder="Insira sua senha" required="true"></asp:TextBox>
                          
                        </div>
                </div>

                 <div class="control-group">
                    <label class="control-label"></label>
                        <div class="controls">
                            <asp:Button ID="Button1" runat="server"  name="enviar" class="btn btn-success" Text="Enviar" OnClick="Button1_Click" />
                                        
                            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Limpar" />
                                        
                        </div>
                 </div><br />
            </div>
        </div><br>
    </form>
    
</body>
</html>
