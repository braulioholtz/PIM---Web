using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BDoperation
/// </summary>
public class BDoperation
{
    public SqlDataReader resp = null;
    public SqlConnection con;
    public SqlCommand cSql;
    string strSql = "";
    public SqlDataAdapter adapter;

    public void conecta() //sempre que for usar o banco chama esta string
    {
        string scon = @"Data Source=PC-ALEX;Initial Catalog=ADSIIIPIZZA;Integrated Security=True"; // string de conexão (sempre usar o @ para se existir algum erro o visual nao reconhecer como comando.
        con = new SqlConnection(scon); // estanciou o objeto, e tem como parametro a string de conexão, que seria um endereço para ir ate a conexão
        con.Open();
    }

    public void fecha()
    {
        con.Close();
    }
    public bool verificaLogin(string email, string senha)
    {
        bool login;

        conecta();
        cSql = new SqlCommand("select id from Clientes where email =@email And senha =@senha", con);
        cSql.Parameters.AddWithValue("@email", email);
        cSql.Parameters.AddWithValue("@senha", senha);

        cSql.Connection = con;
        resp = cSql.ExecuteReader();

        if (resp.HasRows)
        {
            login = true;
        }
        else
        {
            login = false;

        }
        return login;
    }

    public void incluirCadastro(newcadastro nc)
    {
        conecta();


        strSql = "insert into Clientes values(" +
            "@nome, @email, @senha, @endereco,@numCasa, @cep, @complemento, @bairro, @telefone1, @telefone2, @celular)";

        cSql = new SqlCommand(strSql, con);
        cSql.Parameters.AddWithValue("@nome", nc.nome);
        cSql.Parameters.AddWithValue("@email", nc.email);
        cSql.Parameters.AddWithValue("@senha", nc.senha);
        cSql.Parameters.AddWithValue("@endereco", nc.endereco);
        cSql.Parameters.AddWithValue("@numCasa", nc.numCasa);
        cSql.Parameters.AddWithValue("@cep", nc.cep);
        cSql.Parameters.AddWithValue("@complemento", nc.complemento);
        cSql.Parameters.AddWithValue("@bairro", nc.bairro);
        cSql.Parameters.AddWithValue("@telefone1", nc.telResidencial);
        cSql.Parameters.AddWithValue("@telefone2", nc.telRecado);
        cSql.Parameters.AddWithValue("@celular", nc.celular);
        cSql.ExecuteNonQuery();
        fecha();


    }

    public DataSet exibePedidos(String user)
    {

        conecta();
        
        DataSet ds = new DataSet();

        try
        {
            String sql = "SELECT codPedido, dataPedido, valorPedido, statusEntrega, tipoEntrega FROM Pedidos";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, con);

            adapter.Fill(ds);

        }
        catch (Exception ex)
        {

        }

        fecha();

        return ds;

    }

    

}