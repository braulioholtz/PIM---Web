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

    }
    protected void ddlPizza2_Load(object sender, EventArgs e)
    {

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

    }

    protected void grvItens_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddlBebidas_Load(object sender, EventArgs e)
    {

    }
    protected void ddlOutros_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddBebidas_Click(object sender, EventArgs e)
    {

    }

    protected void btnAddOutros_Click(object sender, EventArgs e)
    {

    }

    protected void wzPedido_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        
    }



    
}