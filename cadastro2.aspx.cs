using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public struct newcadastro
    {
       public string nome;
       public string email;
       public string senha;
       public string endereco;
       public string numCasa; 
       public string cep;
       public string complemento;
       public string bairro;
       public string telResidencial;
       public string telRecado;
       public string celular;


    };
    public partial class cadastro2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void limpar_click(Object sender, EventArgs e)
        {
            TxtBairro.Text = "";
            TxtCep.Text="";
            TxtComplemento.Text="";
            TxtnumCasa.Text = "";
            TxtEnde.Text = "";
            TxtTel.Text="";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cadastrar2();
            Response.Redirect("confirma.aspx");
            
        }
        private void cadastrar2()
        {
            cadastro c = new cadastro();
            newcadastro nc = new newcadastro();
            nc.nome = Convert.ToString(Page.Session["nome"]);
            nc.email = Convert.ToString(Page.Session["email"]);
            nc.senha = Convert.ToString(Page.Session["senha"]);
            nc.endereco = TxtEnde.Text;
            nc.numCasa = TxtnumCasa.Text;
            nc.cep = Convert.ToString(TxtCep.Text);
            nc.complemento = TxtComplemento.Text ;
            nc.bairro = TxtBairro.Text;
            nc.telResidencial= TxtTel.Text;
            nc.telRecado = TxtTel2.Text;
            nc.celular = TxtCel.Text;
            BDoperation bd = new BDoperation();
            bd.incluirCadastro(nc);
        }
    }

 
}