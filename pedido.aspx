<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="pedido.aspx.cs" Inherits="pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" Width="100%">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" title="Step 1">
                <div class="col-md-6">
                    <h2>Pedido</h2>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%;">
                            <span class="sr-only">33% Complete</span>
                        </div>
                    </div>
          
                    <h2>Pizza</h2>        
                    <label>Tipo</label>

                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="list-group">
                        <asp:ListItem Onclick="disable()">Meia</asp:ListItem>
                        <asp:ListItem Onclick="enabled()">Inteira</asp:ListItem>
                    </asp:RadioButtonList>

                    <label>Sabor</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Calabresa</asp:ListItem>
                        <asp:ListItem>Pepperoni</asp:ListItem>
                        <asp:ListItem>Mussarela</asp:ListItem>
                        <asp:ListItem>Atum</asp:ListItem>
                        <asp:ListItem>Portuguesa</asp:ListItem>
                        <asp:ListItem>Baiana</asp:ListItem>
                        <asp:ListItem>Frango c/ catupiry</asp:ListItem>
                        <asp:ListItem>Picanha</asp:ListItem>            
                    </asp:DropDownList>


                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem>Calabresa</asp:ListItem>
                        <asp:ListItem>Pepperoni</asp:ListItem>
                        <asp:ListItem>Mussarela</asp:ListItem>
                        <asp:ListItem>Atum</asp:ListItem>
                        <asp:ListItem>Portuguesa</asp:ListItem>
                        <asp:ListItem>Baiana</asp:ListItem>
                        <asp:ListItem>Frango c/ catupiry</asp:ListItem>
                        <asp:ListItem>Picanha</asp:ListItem>            
                    </asp:DropDownList>

                    <label>Observações</label>
                    
                    <textarea id="TextArea1" name="S1"></textarea>
                </div>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" title="Step 2">
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>

