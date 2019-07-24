using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class userxg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
       

        TxtUser.Text=Session["user"].ToString();
            
   

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
     
            string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

            SqlConnection con = new SqlConnection(s);
            con.Open();
            string sqlcon = "update UserInfo set password='" + TxtPwd.Text + "' where username='" + TxtUser.Text + "' ";
            SqlCommand cmd = new SqlCommand(sqlcon, con);
            cmd.ExecuteNonQuery();
            con.Close();
        TxtPwd.Text = "";
        TxtPwdconfim.Text = "";
        TxtUser.Text = "";

           
            Response.Write("<script>alert('操作成功！');</script>");
      
    }
 
}