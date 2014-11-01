using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    BDoperation bd = new BDoperation();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        string usuario = txtUsuario.Text;
        string senha = txtSenha.Text;
        if (bd.verificaLogin(usuario, senha) == true)
        {
            /* @todo Ajustar login */
            Response.Redirect("pedido.aspx");

        }
        else
        {
            lblValida.Text = "Usuario ou Senha invalidos";
        }
    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("cadastro.aspx");
    }
}