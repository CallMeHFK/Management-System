using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class xsbm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlpxxmbing();

            lsh();
        }


    }
    void lsh()
    {
        try
        {
            string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

            SqlConnection con = new SqlConnection(s);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(lsh) FROM pxbmb", con);

            string a = cmd.ExecuteScalar().ToString();

            txtlsh.Text = (int.Parse(string.Format("{0}", cmd.ExecuteScalar())) + 1).ToString();
            con.Close();
        }
        catch { txtlsh.Text = "1"; }
        finally { }

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
            DropDownList4.Items.Add(ds.Tables[0].Rows[i]["pxmc"].ToString());
            DropDownList4.Items[i].Text = ds.Tables[0].Rows[i]["pxmc"].ToString() + "第" + ds.Tables[0].Rows[i]["pxqc"].ToString() + "期";
            DropDownList4.Items[i].Value = ds.Tables[0].Rows[i]["pxid"].ToString();


        }

    }
  
    void dlsave()
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sqlcon = "insert into UserInfo(username,password,Dept,Role) values(' " + txtRequiredField.Text.Trim() + "','" + txtPwd.Text.Trim() + "','系部','学员')";
        SqlCommand cmd = new SqlCommand(sqlcon, con);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Enabled = true;
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sqlcon = "insert into pxbmb(lsh,xm,sfz,xb,lxdh,mz,xl,gzdw,pxid) values(' " + txtlsh.Text + "','" + txtRequiredField.Text + "','" + txtId.Text + "','" + RadioButtonList1.SelectedValue + "','" + txtPhone.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedItem.Value + "','" + DropDownList4.SelectedItem.Value + "')";
        SqlCommand cmd = new SqlCommand(sqlcon, con);
        cmd.ExecuteNonQuery();
        con.Close();
        dlsave();
        lsh();
        txtId.Text = "";
        txtlsh.Text = "";
        txtmc.Text = "";
        txtPhone.Text = "";
        txtPwd.Text = "";
        txtPwdConfirm.Text = "";
        txtRequiredField.Text = "";
        Response.Write("<script>alert('操作成功！');</script>");
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        if (txtmc.Text == "")
        {
            Response.Write("<script>alert('添加失败!');</script>");
        }

        else
        {


            string mc = txtmc.Text.ToString();
            DropDownList3.Items.Add(mc.ToString());
        }

    }

    protected void Button4_Disposed(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        DropDownList3.ClearSelection();
    }
}