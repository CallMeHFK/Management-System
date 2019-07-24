using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class pxzc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {


            string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

            SqlConnection con = new SqlConnection(s);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Role  from UserInfo where username='" + Session["user"].ToString() + "'", con);
            string a = cmd.ExecuteScalar().ToString();
            con.Close();


            if (a == "财务人员")
            {

            }

            else if (a == "管理员")
            {

            }
            else
            {
                Response.Redirect("wq.aspx");

            }
        }
        if (!IsPostBack)
        {
            ddlpxxmbing();
        }
   
    string username = Session["user"].ToString();
    Session["_username"] = username;
    }
    void session(){
          string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);

        con.Open();
        string str = "select xm from pxbmb where lsh='"+Txtlsh.Text+"'";
        SqlCommand cmd = new SqlCommand(str, con);

        string a = cmd.ExecuteScalar().ToString();
        con.Close();
        Session["_xm"] = a;
          
    }
    void nopay(){
          string id = DropDownList1.SelectedItem.Value;


    string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

    SqlConnection con = new SqlConnection(s);
    con.Open();
   SqlCommand cmd = new SqlCommand("SELECT COUNT(jf) FROM pxbmb WHERE pxid='" + id + "'and jf='1'", con);

    string a = cmd.ExecuteScalar().ToString();
    Txtnopay.Text = (int.Parse(TxtSum.Text)-int.Parse(a)).ToString();
    con.Close();
    }
    void griddisp()
    {
        string id = DropDownList1.SelectedItem.Value;

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);

        con.Open();
        string str = "select * from pxbmb where pxid='"+id+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    void ddlpxxmbing()
    {   
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sql = "select pxid,pxmc,pxqc from pxxx";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DropDownList1.Items.Add(ds.Tables[0].Rows[i]["pxmc"].ToString());
            DropDownList1.Items[i].Text = ds.Tables[0].Rows[i]["pxmc"].ToString()+"第" + ds.Tables[0].Rows[i]["pxqc"].ToString()+"期";
            DropDownList1.Items[i].Value = ds.Tables[0].Rows[i]["pxid"].ToString();


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string date = DateTime.Now.ToString();

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sqlcon = "update pxbmb set jfsj='"+date+"',jfje='"+Txtjf.Text+"',jf='1' where lsh='"+Txtlsh.Text+"'";
        SqlCommand cmd = new SqlCommand(sqlcon, con);
        cmd.ExecuteNonQuery();
        con.Close();
         griddisp();

         Session["_mc"] = DropDownList1.SelectedItem.Text;
         string user = Session["user"].ToString();
         Session["_username"] = user;
     
         Session["_money"] = Txtjf.Text;

         session();
        Txtjf.Text = "";
        Txtlsh.Text = "";
         Response.Write("<script language=javascript> window.open('../print.aspx','_blank','toolbar=no,menubar=no,resizable=no,top=100,left=100,width=700,height=320,location=no, status=no'); </script> ");
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = DropDownList1.SelectedItem.Value;
        

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT(pxid) FROM pxbmb WHERE pxid='"+id+"'", con);

        string a = cmd.ExecuteScalar().ToString();
        TxtSum.Text = (int.Parse(a)).ToString();
        con.Close();

        nopay();
        griddisp();
    }

    protected void Txtjf_TextChanged(object sender, EventArgs e)
    {
        string id = DropDownList1.SelectedItem.Value;

        try
        {
            string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

            SqlConnection con = new SqlConnection(s);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT jfje FROM pxbmb WHERE pxid='" + id + "'", con);

            string b = cmd.ExecuteScalar().ToString();
            Txtmoney.Text = (int.Parse(TxtSum.Text) * int.Parse(Txtjf.Text)).ToString();
        }
        catch
        {
            Response.Write("<script>alert('请选择项目！');</script>");
            }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }


    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        string id = DropDownList1.SelectedItem.Value;

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);

        con.Open();
        string str = "SELECT * FROM pxbmb WHERE jf ='1' and pxid = '" + id + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)

    {
        string id = DropDownList1.SelectedItem.Value;
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);

        con.Open();
        string str = "SELECT * FROM pxbmb WHERE jf =''and pxid = '" + id + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        string id = DropDownList1.SelectedItem.Value;
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);

        con.Open();
        string str = "SELECT * FROM pxbmb where pxid = '" + id + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


       
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        griddisp();

    }
}