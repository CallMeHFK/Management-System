using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class costitem : System.Web.UI.Page
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
        ddlpxxmbing();
      
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
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++){
            DDLPxxm.Items.Add(ds.Tables[0].Rows[i]["pxmc"].ToString());
            DDLPxxm.Items[i].Text = ds.Tables[0].Rows[i]["pxmc"].ToString() + "第" + ds.Tables[0].Rows[i]["pxqc"].ToString() + "期";
            DDLPxxm.Items[i].Value = ds.Tables[0].Rows[i]["pxid"].ToString();
       
            
            }
        con.Close();

        }
    
    void griddisp()
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
       
        con.Open();
        string str = "select * from pxzcb where pxid='" + DDLPxxm.SelectedItem.Value +"'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
     
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sqlcon = "insert into pxzcb(pxid,bj,pay,money,bltime,people) values('" +DDLPxxm.SelectedItem.Value + "','" + DDLbj.SelectedValue + "','" + DDLpay.SelectedValue + "','" + TxtPay.Text + "','" + TxtDate.Text + "','" + TxtPeople.Text + "')";
        SqlCommand cmd = new SqlCommand(sqlcon, con);
        cmd.ExecuteNonQuery();
        con.Close();
        griddisp();
        TxtDate.Text = "";
        TxtPay.Text = "";
        TxtPeople.Text = "";
        Response.Write("<script>alert('操作成功！');</script>");

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        string id = e.Values[0].ToString();
        string sqlstr = "delete from pxzcb where id='" + id + "'";
        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlstr, con);
        cmd.ExecuteNonQuery();
        con.Close();
        griddisp();

    }
 
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
       TxtPay.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
        TxtDate.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
        TxtPeople.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text;

    }
    protected void DDLPxxm_SelectedIndexChanged(object sender, EventArgs e)
    {
        griddisp();
    }
    protected void BtnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
      string time=  Calendar1.SelectedDate.ToShortDateString();
        TxtDate.Text = time.ToString();
        Calendar1.Visible = false;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        griddisp();
        ddlpxxmbing();
    }
}