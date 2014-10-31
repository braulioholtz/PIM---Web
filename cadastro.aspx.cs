using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Page.Session.Abandon();
        Response.Redirect("index.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Session["nome"] = TextBox1.Text;
        Page.Session["email"] = TextBox2.Text;
        Page.Session["senha"] = TextBox3.Text;
        Response.Redirect("cadastro2.aspx");

    }
    public void limpar_click(Object sender, EventArgs e)
    {
        TxtBairro.Text = "";
        TxtCep.Text = "";
        TxtComplemento.Text = "";
        TxtnumCasa.Text = "";
        TxtEnde.Text = "";
        TxtTel.Text = "";

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}