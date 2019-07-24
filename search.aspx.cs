using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Linq;
public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] == null)
        //{
        //    Response.Redirect("index.aspx");
        //}
        //else
        //{


        //    string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        //    SqlConnection con = new SqlConnection(s);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select Role  from UserInfo where username='" + Session["user"].ToString() + "'", con);
        //    string a = cmd.ExecuteScalar().ToString();
        //    con.Close();


        //    if (a == "领导")
        //    {

        //    }

        //    else
        //    {
        //        Response.Redirect("wq.aspx");

        //    }
        //}

    }




    void griddisp()
    {
        if (Txtsearch.Text.Trim() == "")
            return;
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();

        string constrsql = " select a.*,b.*,c.* from pxxx a," +
            " (select pxid from pxzcb group by pxid) c" +
            " right join (select sum(jfje)jfhj,pxid,count(pxid)peoplecount from pxbmb group by pxid) b on c.pxid=b.pxid " +
            " where a.pxid=b.pxid and a.pxsj=" + Txtsearch.Text;
        SqlCommand cmd = new SqlCommand(constrsql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
       
    }
  

    protected void Button1_Click(object sender, EventArgs e) {

        griddisp();

    }     
 
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Clear();

        Response.AddHeader("content-disposition", "attachment;filename=FileName.xlsx");

        Response.Charset = "gb2312";

        Response.ContentType = "application/vnd.xlsx";

        System.IO.StringWriter stringWrite = new System.IO.StringWriter();

        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);


        GridView1.AllowPaging = false;
        griddisp();


        Response.Write(stringWrite.ToString());

        Response.End();

        GridView1.AllowPaging = true;
        griddisp();
    }
    void pxid()
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        string sqlstr = "select pxid from pxxx where pxsj'" + Txtsearch.Text+ "'";
        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlstr, con);
       string a= cmd.ExecuteNonQuery().ToString();
        Session["a"] = a;
        con.Close();
    }
 
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Txtsearch.Text.Trim() == "")
            return;
        gridview2();
        gridview3();
    }
    void gridview3() {
        if (Txtsearch.Text.Trim() == "")
            return;
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();

        string constrsql = "select pxzcb.*,pxxx.* from pxzcb,pxxx where pxzcb.pxid=pxxx.pxid and pxsj='"+Txtsearch.Text+"'";
        SqlCommand cmd = new SqlCommand(constrsql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView3.DataSource = ds.Tables[0];
        GridView3.DataBind();
    }

    void gridview2() {

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();

        string constrsql = " select a.*,b.*,c.* from pxxx a," +
            " (select pxid from pxzcb group by pxid) c" +
            " right join (select sum(jfje)jfhj,pxid,count(pxid)peoplecount from pxbmb group by pxid) b on c.pxid=b.pxid " +
            " where a.pxid=b.pxid and a.pxsj=" + Txtsearch.Text;
        SqlCommand cmd = new SqlCommand(constrsql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox c = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
        if (c.Checked) { 
            pxid();
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        string sqlstr = "delete from pxxx where pxid='" + Session["a"] + "'";
        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlstr, con);
        cmd.ExecuteNonQuery();
        con.Close();
        griddisp();
        }
    }

    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        griddisp();
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        gridview2();
      
    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        gridview3();

    }
}