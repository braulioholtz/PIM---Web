using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class meuspedidos : System.Web.UI.Page
{
    BDoperation bd = new BDoperation();

    protected void Page_Load(object sender, EventArgs e)
    {

        DataSet ds = bd.exibePedidos("1"); // test
        if (ds.Tables.Count > 0)
        {
            grvPedidos.DataSource = ds;
            grvPedidos.DataBind();
        }
        else
        {
            grvPedidos.EmptyDataText = "Você não tem pedidos";
        }

    }
}