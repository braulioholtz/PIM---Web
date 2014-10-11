using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class pedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         LblUser.Text = Convert.ToString(Page.Session["usuario"]);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue =="Meia")
            {
                
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.Items[1].Selected)
            {
                
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}