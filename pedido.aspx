<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="pedido.aspx.cs" Inherits="pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
        <asp:Wizard ID="wzPedido" runat="server" Width="100%" ActiveStepIndex="0" FinishCompleteButtonText="Finalizar" StepNextButtonText="Próximo" StartNextButtonText="Próximo" DisplaySideBar="False">
            <FinishCompleteButtonStyle CssClass="btn btn-success"></FinishCompleteButtonStyle>
            <FinishPreviousButtonStyle CssClass="btn btn-default"></FinishPreviousButtonStyle>
            <StartNextButtonStyle CssClass="btn btn-success"></StartNextButtonStyle>
            <StepNextButtonStyle CssClass="btn btn-success"></StepNextButtonStyle>
            <WizardSteps>
                <asp:WizardStep ID="wsPizza" runat="server" title="Pizza">
                    <div class="col-md-6">
                        <h2>Pedido</h2>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%;">
                                <span class="sr-only">33% Complete</span>
                            </div>
                        </div>
          
                        <h2>Pizza</h2>        
                        <label>Tipo</label>

                        <asp:RadioButtonList ID="rblPizza" runat="server" CssClass="list-group">
                            <asp:ListItem>Meia</asp:ListItem>
                            <asp:ListItem>Inteira</asp:ListItem>
                        </asp:RadioButtonList>

                        <label>Sabor</label>
                        <asp:DropDownList ID="ddlPizza1" runat="server" CssClass="form-control">
                            <asp:ListItem>Calabresa</asp:ListItem>
                            <asp:ListItem>Pepperoni</asp:ListItem>
                            <asp:ListItem>Mussarela</asp:ListItem>
                            <asp:ListItem>Atum</asp:ListItem>
                            <asp:ListItem>Portuguesa</asp:ListItem>
                            <asp:ListItem>Baiana</asp:ListItem>
                            <asp:ListItem>Frango c/ catupiry</asp:ListItem>
                            <asp:ListItem>Picanha</asp:ListItem>            
                        </asp:DropDownList>


                        <asp:DropDownList ID="ddlPizza2" runat="server" CssClass="form-control">
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
                    
                        <textarea id="txtPizzaObs" name="S1"></textarea>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="wsOpcional" runat="server" title="Step 2">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
</asp:Content>

