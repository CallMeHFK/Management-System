using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class usermanager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
           

        }

        if (!IsPostBack)
            bm();

    }

    void bm() {

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand("select Dept  from UserInfo where username='" + Session["user"].ToString() + "'", con);
        string a = cmd.ExecuteScalar().ToString();
        con.Close();
        Label2.Text = a;

    }




    protected void TreeView1_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["user"].ToString();

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
        SqlCommand cmd = new SqlCommand("select Role  from UserInfo where username='" + Session["user"].ToString() + "'", con);
        string a = cmd.ExecuteScalar().ToString();
        con.Close();
        string NodeValue =a.ToString();
        for (int n = 0; n <= 1; n++)
            for (int i = TreeView1.Nodes[n].ChildNodes.Count - 1; i >= 0; i--)
            {

                if (TreeView1.Nodes[n].ChildNodes[i].Value.IndexOf(NodeValue) < 0)
                    TreeView1.Nodes[n].ChildNodes.Remove(TreeView1.Nodes[n].ChildNodes[i]);

            }
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
}