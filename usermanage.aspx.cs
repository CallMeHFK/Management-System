using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class pxsearch : System.Web.UI.Page
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
            if (a == "领导")
            {

            }
            else if (a == "管理员")
            { }

            else
            {
                Response.Redirect("wq.aspx");

            }
        }
        if (!Page.IsPostBack) { griddisp(); }
      
    
    }

    protected void btnIntroduction_Click(object sender, EventArgs e)
    {  
        //获取被触发的Button对象  
        Button b = (Button)sender;
        if (b.ID == "btnAdd")
        {
            //激活View1  
            MultiView1.SetActiveView(View1);
            GridView1.Visible = true;
        }
        else
        {
           
            //激活View2  
            MultiView1.SetActiveView(View2);
            GridView1.Visible = false;
        }
    }
    void griddisp()
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        string dept = DDLdept.SelectedValue;
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string str = "select * from UserInfo where Dept='" + dept + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        string id = e.Values[0].ToString();
        string sqlstr = "delete from UserInfo where username='" + id + "'";
        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlstr, con);
        cmd.ExecuteNonQuery();
        con.Close();
        griddisp();

    }


    protected void BtnSave_Click(object sender, EventArgs e)
    {
        try
        {

            if (TxtUser.Text.Trim() == "")
            {
                Label1.Text = "请输入用户名";

            }
            else
            {
                Label1.Enabled = false;
                string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

                SqlConnection con = new SqlConnection(s);
                con.Open();
                string sqlcon = "insert into UserInfo(username,Dept,password,Role) values('" + TxtUser.Text + "','" + DDLdept.SelectedValue + "','" + TxtPwd.Text + "','" + DDLrole.SelectedValue + "')";
                SqlCommand cmd = new SqlCommand(sqlcon, con);
                cmd.ExecuteNonQuery();
                con.Close();
                griddisp();
            }

        }
        catch
        {
            Label1.Text = "用户名重复";

        }
        TxtPwd.Text = "";
        TxtPwdconfim.Text = "";
        TxtUser.Text = "";

        Response.Write("<script>alert('操作成功！');</script>");
    }
    protected void BtnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void DDLdept_SelectedIndexChanged(object sender, EventArgs e)
    {
        griddisp();
       
    }
    protected void DDLrole_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        string role = DDLrole.SelectedValue;
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string str = "select * from UserInfo where Dept='" +role + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }
}
