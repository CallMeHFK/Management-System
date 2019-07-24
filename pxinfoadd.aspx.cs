using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class pxinfoadd : System.Web.UI.Page
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
            {

            }
            else if (a == "培训人员") { }
            else
            {
                Response.Redirect("wq.aspx");

            }
        }
        if (!Page.IsPostBack) { griddisp(); }
       

      
    }


    void griddisp()
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        string str = "select * from pxxx";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sqlcon = "insert into pxxx(pxsj,pxmc,pxqc,begintime,endtime,pxcost,pxnr) values('" + TxtPxtime.Text + "','" + TxtPxmc.Text + "','" + TxtPxqc.Text + "','" + TxtPxbegin.Text + "','" + TxtPxend.Text + "','" + TxtPxcost.Text + "','" + TxtPxnr.Text + "')";
        SqlCommand cmd = new SqlCommand(sqlcon, con);
        cmd.ExecuteNonQuery();
        con.Close();
        griddisp();
        TxtPxtime.Text = "";
        TxtPxmc.Text = "";
        TxtPxqc.Text = "";
        TxtPxbegin.Text = "";
        TxtPxend.Text = "";
        TxtPxcost.Text = "";
        TxtPxnr.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TxtPxtime.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        TxtPxmc.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        TxtPxqc.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
        TxtPxbegin.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
        TxtPxcost.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
        TxtPxend.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text;

    }



    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox c = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
        if (c.Checked)
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
            }
    }

    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        string id = e.Values[0].ToString();
        string sqlstr = "delete from pxxx where pxid='" + id + "'";
        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlstr, con);
        cmd.ExecuteNonQuery();
        con.Close();
        griddisp();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        griddisp();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        /*获取要更新的数据*/
        String newid = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text;
        String newtime = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
        String newmc = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
        string newqc = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
        String newcost = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text;
        String newbegin= ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text;
       
        String newend = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text;

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();


        string sql = "update pxxx set pxsj=@time,pxmc=@mc,pxqc=@qc,pxcost=@cost,begintime=@begin,endtime=@end where pxid='" + newid+"'";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@id",newid);
        cmd.Parameters.AddWithValue("@time",newtime);
        cmd.Parameters.AddWithValue("@qc",newqc);
        cmd.Parameters.AddWithValue("@mc",newmc);
        cmd.Parameters.AddWithValue("@cost",newcost);
        cmd.Parameters.AddWithValue("@begin",newbegin);
        cmd.Parameters.AddWithValue("@end",newend);
        cmd.ExecuteNonQuery();
        con.Close();
        this.GridView1.EditIndex = -1;


        griddisp();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        griddisp();
    }
   


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
        Calendar1.Enabled = true;
        Calendar2.Visible = false;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
        
         
        string time = Calendar1.SelectedDate.ToShortDateString();
        TxtPxbegin.Text = time.ToString();
        Calendar1.Visible = false;
        Calendar1.Enabled = false;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        string time = Calendar2.SelectedDate.ToShortDateString();
        TxtPxend.Text = time.ToString();
        Calendar2.Visible = false;
        Calendar2.Enabled = false;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
        Calendar1.Visible = false;
        Calendar2.Enabled = true;

    }
}