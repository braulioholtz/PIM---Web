<%@ Page Title="Fazer pedido" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="pedido.aspx.cs" Inherits="pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
        <asp:Wizard ID="wzPedido" runat="server" Width="100%" ActiveStepIndex="0" FinishCompleteButtonText="Finalizar" StepNextButtonText="Próximo" StartNextButtonText="Próximo" DisplaySideBar="False" OnFinishButtonClick="wzPedido_FinishButtonClick">
            <StepPreviousButtonStyle CssClass="btn btn-default" />
            <FinishCompleteButtonStyle CssClass="btn btn-success"></FinishCompleteButtonStyle>
            <FinishPreviousButtonStyle CssClass="btn btn-default"></FinishPreviousButtonStyle>
            <StartNextButtonStyle CssClass="btn btn-success"></StartNextButtonStyle>
            <StepNextButtonStyle CssClass="btn btn-success"></StepNextButtonStyle>
            <WizardSteps>
                <asp:WizardStep ID="wsPizza" runat="server" title="Pizza">
                    
                    <h2>Pedido</h2>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
                            <span class="sr-only">20% Complete</span>
                        </div>
                    </div>
          
                    <h3>Pizza</h3>        
                    <label>Tipo</label>

                    <div class="row">
                        <div class="col-xs-6">
                            <asp:RadioButtonList ID="rblPizza" runat="server" CssClass="list-group" OnSelectedIndexChanged="rblPizza_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="meia" Selected="True">Meia</asp:ListItem>
                                <asp:ListItem Value="inteira">Inteira</asp:ListItem>
                            </asp:RadioButtonList>

                            <label>Sabor</label>
                            <asp:DropDownList ID="ddlPizza1" runat="server" CssClass="form-control" OnLoad="ddlPizza1_Load">
                                <asp:ListItem>Calabresa</asp:ListItem>
                                <asp:ListItem>Pepperoni</asp:ListItem>
                                <asp:ListItem>Mussarela</asp:ListItem>
                                <asp:ListItem>Atum</asp:ListItem>
                                <asp:ListItem>Portuguesa</asp:ListItem>
                                <asp:ListItem>Baiana</asp:ListItem>
                                <asp:ListItem>Frango c/ catupiry</asp:ListItem>
                                <asp:ListItem>Picanha</asp:ListItem>            
                            </asp:DropDownList>


                            <asp:DropDownList ID="ddlPizza2" runat="server" CssClass="form-control" OnLoad="ddlPizza2_Load">
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
                            <asp:TextBox ID="txtPizzaObs" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:Button ID="btnAdicionaPizza" runat="server" Text="Adicionar pizza" CssClass="btn btn-primary" OnClick="btnAdicionaPizza_Click" />
                            <br />
                        </div>
                        <div class="col-xs-6">
                            <asp:GridView ID="grdPizzas" runat="server" OnSelectedIndexChanged="grdPizzas_SelectedIndexChanged" CssClass="table table-condensed">
                            </asp:GridView>
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="wsOpcional" runat="server" title="Mais itens">
                    <h2>Pedido</h2>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <h3>Bebidas</h3>
                        <div class="row">
                            <div class="col-lg-2">
                                <asp:Label ID="lblQtdeBebida" runat="server" Text="Qtde"></asp:Label>
                                <asp:TextBox ID="txtQtdeBebida" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <asp:DropDownList ID="ddlBebidas" runat="server" CssClass="form-control" OnLoad="ddlBebidas_Load"></asp:DropDownList>
                        </div>
                        <asp:Button ID="btnAddBebidas" runat="server" Text="Adicionar bebidas" CssClass="btn btn-primary" OnClick="btnAddBebidas_Click" />
                        <h3>Outros</h3>
                        <div class="row">
                            <div class="col-lg-2"><asp:Label ID="lblQtdeOutros" runat="server" Text="Qtde"></asp:Label>
                            <asp:TextBox ID="txtQtdeOutros" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox></div>
                        </div>
                        <div class="row">
                            <asp:DropDownList ID="ddlOutros" runat="server" CssClass="form-control" OnLoad="ddlOutros_Load"></asp:DropDownList>
                        </div>
                        <asp:Button ID="btnAddOutros" runat="server" Text="Adicionar outros" CssClass="btn btn-primary" OnClick="btnAddOutros_Click" />


                    </div>
                    <div class="col-xs-6">
                        <asp:GridView ID="grvItens" runat="server" OnSelectedIndexChanged="grvItens_SelectedIndexChanged"></asp:GridView>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Meios de pagamento">
                    <h2>Pedido</h2>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                    <h3>Meios de pagamento</h3>
                    <strong>Total:</strong> <asp:Label ID="lblTotalPedido" runat="server"></asp:Label>
                    <asp:RadioButtonList ID="rblMeioPagamento" runat="server">
                        <asp:ListItem Selected="True">Dinheiro</asp:ListItem>
                        <asp:ListItem>Cartão</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Finalizar Pedido" StepType="Finish">
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                            <span class="sr-only">80% Complete</span>
                        </div>
                    </div>
                    <h2>Confirmar pedido</h2>
                    Os itens do pedido são
                    <asp:GridView ID="grvItensFinaliza" runat="server"></asp:GridView>
                    <strong>Meio de pagamento: </strong> <asp:Label ID="lblMeioPagamentoFinaliza" runat="server" OnLoad="lblMeioPagamentoFinaliza_Load"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Pedido Finalizado">
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                            <span class="sr-only">100% Complete</span>
                        </div>
                    </div>
                    <h2>Pedido Finalizado</h2>
                    <asp:GridView ID="grvItensFinalizado" runat="server"></asp:GridView>
                    <strong>Meio de pagamento: </strong> <asp:Label ID="lblMeioPagamentoOK" runat="server"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
</asp:Content>

