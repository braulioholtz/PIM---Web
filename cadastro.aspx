<%@ Page Title="" Language="C#" MasterPageFile="~/includes/MasterPage.master" AutoEventWireup="true" CodeFile="cadastro.aspx.cs" Inherits="cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12">
        <asp:Wizard ID="Wizard1" runat="server" Width="100%" StartNextButtonStyle-CssClass="btn btn-success" FinishCompleteButtonStyle-CssClass="btn btn-success" StepNextButtonStyle-CssClass="btn btn-success" FinishPreviousButtonStyle-CssClass="btn btn-default" ActiveStepIndex="0" FinishCompleteButtonText="FinaElizar" StepNextButtonText="PróxiOmo" StartNextButtonText="PróAximo" DisplaySideBar="False">
        <FinishCompleteButtonStyle CssClass="btn btn-success"></FinishCompleteButtonStyle>

        <FinishPreviousButtonStyle CssClass="btn btn-default"></FinishPreviousButtonStyle>

        <StartNextButtonStyle CssClass="btn btn-success"></StartNextButtonStyle>

        <StepNextButtonStyle CssClass="btn btn-success"></StepNextButtonStyle>
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" title="Dados de Login">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%;">
                        <span class="sr-only">30% Complete</span>
                    </div>
                </div>
                <h2>Cadastro</h2>
                <div class="col-md-3">
                    <label class="control-label">Nome</label>
                    <asp:TextBox ID="TextBox1" name="nome" type="text" placeholder="Insira seu nome"  required="true" runat="server" AutoCompleteType="Search" CssClass="form-control"></asp:TextBox>

                    <label class="control-label">Email</label>
                    <asp:TextBox ID="TextBox2" runat="server" name="Email" type="email" placeholder="Insira seu Email" required="true" CssClass="form-control" ></asp:TextBox>

                    <label class="control-label">Senha</label>
                    <asp:TextBox ID="TextBox3" runat="server" name="Senha" type="password" placeholder="Insira sua senha" required="true" CssClass="form-control" ></asp:TextBox>
                      
                </div>


            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" title="Endereço">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
                        <span class="sr-only">30% Complete</span>
                    </div>
                </div>
                <h2>Cadastro - Endereço</h2>
                <div class="col-md-6">
                    <label class="control-label">Endereço</label>
                    <asp:TextBox ID="TxtEnde" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="col-md-9">
                        <label class="control-label">Bairro</label>
                        <asp:TextBox ID="TxtBairro" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#333333" Text="Nº"></asp:Label>
                        <asp:TextBox ID="TxtnumCasa" runat="server"  CssClass="form-control"></asp:TextBox>

                    </div>
                    <label class="control-label">CEP</label>
                    <asp:TextBox ID="TxtCep" runat="server"  CssClass="form-control"></asp:TextBox>

                    <label class="control-label">Complemento</label>
                    <asp:TextBox ID="TxtComplemento" runat="server"  CssClass="form-control"></asp:TextBox>

                    <label class="control-label">Telefone</label>
                    <asp:TextBox ID="TxtTel" runat="server" type="phone"  CssClass="form-control"></asp:TextBox>
                
                    <label class="control-label">Telefone 2</label>
                    <asp:TextBox ID="TxtTel2" runat="server" type="phone" CssClass="form-control"></asp:TextBox>

                    <label class="control-label">Celular</label>
                    <asp:TextBox ID="TxtCel" runat="server" type="phone" CssClass="form-control"></asp:TextBox>
                </div>

            </asp:WizardStep>

            <asp:WizardStep ID="WizardStep3" runat="server" title="Conclusão" StepType="Complete">
                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                        <span class="sr-only">100% Complete</span>
                    </div>
                </div>

                <div class="col-md-6">
                      
                    <h2>Cadastro</h2>
                    <h4>Cadastro concluido com sucesso</h4>
                    
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Fazer pedido" OnClick="Button1_Click" />                                
                </div>
            </asp:WizardStep>

        </WizardSteps>
        </asp:Wizard>
    </div>

</asp:Content>

