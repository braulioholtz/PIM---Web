<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="cadastro.aspx.cs" Inherits="cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
        <asp:Wizard ID="wzCadastro" runat="server" Width="100%" ActiveStepIndex="0" FinishCompleteButtonText="Finalizar" StepNextButtonText="Próximo" StartNextButtonText="Próximo" DisplaySideBar="False">
        <FinishCompleteButtonStyle CssClass="btn btn-success"></FinishCompleteButtonStyle>
        <FinishPreviousButtonStyle CssClass="btn btn-default"></FinishPreviousButtonStyle>
        <StartNextButtonStyle CssClass="btn btn-success"></StartNextButtonStyle>
        <StepNextButtonStyle CssClass="btn btn-success"></StepNextButtonStyle>
        <WizardSteps>
            <asp:WizardStep ID="wsLogin" runat="server" title="Dados de Login">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%;">
                        <span class="sr-only">30% Complete</span>
                    </div>
                </div>
                <h2>Cadastro</h2>
                <div class="col-md-3">
                    <asp:Label ID="lblNome" runat="server" AssociatedControlID="txtNome" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtNome" CssClass="form-control" runat="server"></asp:TextBox>

                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>

                    <asp:Label ID="lblSenha" runat="server" AssociatedControlID="txtSenha" Text="Senha"></asp:Label>
                    <asp:TextBox ID="txtSenha"  CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:Label ID="lblConfirme" runat="server" AssociatedControlID="txtConfirme" Text="Confirme a senha"></asp:Label>
                    <asp:TextBox ID="txtConfirme" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                      
                </div>


            </asp:WizardStep>
            <asp:WizardStep ID="wsEndereco" runat="server" title="Endereço">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
                        <span class="sr-only">30% Complete</span>
                    </div>
                </div>
                <h2>Cadastro - Endereço</h2>
                <div class="col-md-6">

                    <asp:Label ID="lblEndereco" runat="server" AssociatedControlID="txtEndereco" Text="Endereço"></asp:Label>
                    <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control"></asp:TextBox>

                    <div class="col-md-9">
                        <asp:Label ID="lblBairro" runat="server" AssociatedControlID="txtBairro" Text="Bairro"></asp:Label>
                        <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="lblNumero" runat="server" AssociatedControlID="txtnumCasa" Text="Nº"></asp:Label>
                        <asp:TextBox ID="txtnumCasa" runat="server"  CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>

                    <asp:Label ID="lblCep" runat="server" AssociatedControlID="TxtCep" Text="CEP"></asp:Label>
                    <asp:TextBox ID="TxtCep" runat="server" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="lblComplemento" runat="server" AssociatedControlID="txtComplemento" Text="Complemento"></asp:Label>
                    <asp:TextBox ID="txtComplemento" runat="server"  CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="lblTel" runat="server" AssociatedControlID="txtTel" Text="Telefone"></asp:Label>
                    <asp:TextBox ID="txtTel" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                
                    <asp:Label ID="lblTel2" runat="server" AssociatedControlID="txtTel2" Text="Telefone 2"></asp:Label>
                    <asp:TextBox ID="txtTel2" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>

                    <asp:Label ID="lblCel" runat="server" AssociatedControlID="txtCel" Text="Celular"></asp:Label>
                    <asp:TextBox ID="txtCel" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>

            </asp:WizardStep>

            <asp:WizardStep ID="wsConclusao" runat="server" title="Conclusão" StepType="Complete">
                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                        <span class="sr-only">100% Complete</span>
                    </div>
                </div>

                <div class="col-md-6">
                      
                    <h2>Cadastro</h2>
                    <h4>Cadastro concluido com sucesso</h4>
                    
                    <asp:Button ID="btnFazerPedido" CssClass="btn btn-success" runat="server" Text="Fazer pedido" PostBackUrl="~/pedido.aspx" />                                
                </div>
            </asp:WizardStep>

        </WizardSteps>
        </asp:Wizard>
    </div>

</asp:Content>

