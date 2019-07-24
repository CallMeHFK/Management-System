using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       


        if (!IsPostBack)
            datalistdisp();
        
    }
    void datalistdisp()
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sql = "select * from pxxx";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        PagedDataSource psp = new PagedDataSource();
        psp.DataSource = ds.Tables[0].DefaultView;
        psp.AllowPaging = true;
        psp.PageSize = 4;
       
        DataList1.DataSource = psp;
       DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
        con.Close();
}
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        SqlConnection con = new SqlConnection(s);

        con.Open();
        string str = "select count(*) from UserInfo where username=@n_user and password = @n_password";

        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@n_user", TextBox1.Text);

        cmd.Parameters.AddWithValue("@n_password", TextBox2.Text);

        int count = int.Parse(cmd.ExecuteScalar().ToString());
        con.Close();

        if (Session["yzmid"].ToString() == txtYzm.Text.ToUpper())
        {
            if (count == 1)
            {
             
                Session["user"] = TextBox1.Text;
               

                Response.Redirect("pxindex.aspx");

            }
            else
            {
                Response.Write("<script>alert('登录失败!');</script>");

            }

        }
        else
        {
            Response.Write("<script>alert('验证码错误!');</script>");
        }

        
    }
}