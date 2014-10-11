<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="estilo.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script> 
    
</head>
<body>
  
       <form id="form1" runat="server">
        

        <div class="col-sm-4">
                <div class="control-group">
                    <label class="control-label">Usuario</label>
                <div class="controls">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="164px" ValidateRequestMode="Enabled"></asp:TextBox>
                </div>
            </div>
                <br />
         <div class="control-group">
          <label class="control-label">Senha</label>
                <div class="controls">
                    &nbsp;<asp:TextBox ID="TextBox2" type="password" runat="server" Width="160px" ValidateRequestMode="Enabled"></asp:TextBox>
                </div>
        </div>
            
         <div class="control-group">
             <div class="controls">
            
                                                    
                   <br />
            
                                                    
                   <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-success" OnClick="btnEntrar_Click" />
                                                     &nbsp
                                                      &nbsp
                   
                       <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar"  CssClass="btn btn-primary" OnClick="btnCadastrar_Click"/>
                   
                       <br />
                   
                       <br />
&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                   
                       </div>
         </div> 

        
    </div>
    </form>
    
</body>
</html>
