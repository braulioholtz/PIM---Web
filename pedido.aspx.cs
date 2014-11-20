using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pedido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlPizza2.Enabled = false;
        ddlPizza2.Visible = false;

    }

    protected void grdPizzas_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void ddlPizza1_Load(object sender, EventArgs e)
    {
        // Carregar do webservice os sabores das pizzas

    }
    protected void ddlPizza2_Load(object sender, EventArgs e)
    {
        // Carregar do webservice os sabores das pizzas - mesmo código que será utilizado no evento acima
    }

    protected void rblPizza_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblPizza.SelectedValue == "meia")
        {
            ddlPizza2.Enabled = false;
            ddlPizza2.Visible = false;
        }
        else
        {
            ddlPizza2.Enabled = true;
            ddlPizza2.Visible = true;
        }
        
    }

    protected void btnAdicionaPizza_Click(object sender, EventArgs e)
    {
        // Ação quando for adicionado uma pizza, que deverá ser armazenado de uma forma para depois ser recuperado no webservice

    }

    protected void grvItens_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddlBebidas_Load(object sender, EventArgs e)
    {
        // Carregar do webservice as bebidas

    }
    protected void ddlOutros_Load(object sender, EventArgs e)
    {
        // Carregar do webservice os outros itens
    }

    protected void btnAddBebidas_Click(object sender, EventArgs e)
    {
        // Ação quando for adicionado uma bebida, que deverá ser armazenado de uma forma para depois ser recuperado no webservice

    }

    protected void btnAddOutros_Click(object sender, EventArgs e)
    {
        // Ação quando for adicionado outros, que deverá ser armazenado de uma forma para depois ser recuperado no webservice

    }

    protected void lblMeioPagamentoFinaliza_Load(object sender, EventArgs e)
    {
        // recupera o valor selecionado para o meio de pagamento / isso serve de modelo para recuperar os valores
        lblMeioPagamentoFinaliza.Text = rblMeioPagamento.SelectedValue;
        lblMeioPagamentoOK.Text = rblMeioPagamento.SelectedValue;
    }

    protected void wzPedido_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        // Aqui entra o código quando o pedido for finalizado - liga com o webservice, pegue os valores normais como txtcampo.text
    }





}