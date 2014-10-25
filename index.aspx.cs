using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        BDoperation bd = new BDoperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string usuario = TextBox1.Text;
            string senha = TextBox2.Text;
            if (bd.verificaLogin(usuario, senha) == true)
            {
                Page.Session["usuario"] = TextBox1.Text;
                //Page.Session["senha"] = TextBox2.Text;
                Page.Session.Timeout = 5;
                Response.Redirect("pedido.aspx"); 
                          
            }
            else
            {
                //Response.Redirect("index.aspx");
                Label1.Text = "Usuario ou Senha invalidos";
                
            }
                /*
            string user = "alex.rocha";
            string senha = "gamersg3";                     

            if (user == TextBox1.Text && senha == TextBox2.Text)
            {
                
                    Page.Session["usuario"] = TextBox1.Text;
                    Page.Session["senha"] = TextBox2.Text;
                    Page.Session.Timeout = 5;
                    Response.Redirect("pedido.aspx");
                    
            }
            else
            {
                Label1.Text ="Usuario e senha invalidos";
                TextBox1.Focus();
            }
        */
             }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("cadastro.aspx");
        }
    }
}