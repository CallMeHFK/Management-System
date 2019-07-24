using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
public partial class print : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try { 
            money();
            xm();
            string c = Request.QueryString["_pxid"].ToString();
            string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
            SqlConnection con = new SqlConnection(s);
            con.Open();
            string str = "SELECT pxmc FROM pxxx where pxid = '" + c + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            string mc = cmd.ExecuteScalar().ToString();
            Session["_mc"] = mc;
                LblXm.Text = Session["_xm"].ToString();
                LblMoney.Text = Session["_money"].ToString();
                LblHj.Text = Session["_money"].ToString();
                DateTime a = DateTime.Now;
                string ss = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp";
                LblDate.Text = a.Year.ToString() + ss + a.Month.ToString() + ss + a.Day.ToString();
                LblBlr.Text = Session["_username"].ToString();
                LblMoneyDx.Text = dx(float.Parse(LblMoney.Text));
                LblMc.Text = Session["_mc"].ToString();
            }
           catch{ 
            LblXm.Text = Session["_xm"].ToString();
            LblMoney.Text = Session["_money"].ToString();
            LblHj.Text = Session["_money"].ToString();
            DateTime a = DateTime.Now;
            string ss = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp";
            LblDate.Text = a.Year.ToString() + ss + a.Month.ToString() + ss + a.Day.ToString();
             LblBlr.Text=Session["_username"].ToString();           
            LblMoneyDx.Text = dx(float.Parse(LblMoney.Text));
            LblMc.Text = Session["_mc"].ToString();
            }



        }
    }
  void money()
  {
      string b = Request.QueryString["_pxid"].ToString();
      string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

      SqlConnection con = new SqlConnection(s);

      con.Open();
      string str = "SELECT jfje FROM pxbmb where pxid = '" + b + "'";
      SqlCommand cmd = new SqlCommand(str, con);
      string money = cmd.ExecuteScalar().ToString();
      Session["_money"] = money;
  
    
  }
  void xm()
  {
      string b = Request.QueryString["_pxid"].ToString();
      string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

      SqlConnection con = new SqlConnection(s);

      con.Open();
      string str = "SELECT xm FROM pxbmb where pxid = '" + b + "'";
      SqlCommand cmd = new SqlCommand(str, con);
      string xm = cmd.ExecuteScalar().ToString();
      Session["_xm"] = xm;
  }
    private string dx(float x)
    {
        float discountAmount = x;
        string s = discountAmount.ToString("#L#E#D#C#K#E#D#C#J#E#D#C#I#E#D#C#H#E#D#C#G#E#D#C#F#E#D#C#.0B0A");//d + "\n" +
        string d = Regex.Replace(s, @"((?<=-|^)[^1-9]*)|((?'z'0)[0A-E]*((?=[1-9])|(?'-z'(?=[F-L\.]|$))))|((?'b'[F-L])(?'z'0)[0A-L]*((?=[1-9])|(?'-z'(?=[\.]|$))))", "${b}${z}");

        string s2 = Regex.Replace(d, ".", delegate(Match m)
        { return "负元空零壹贰叁肆伍陆柒捌玖空空空空空空空分角拾佰仟萬億兆京垓秭穰"[m.Value[0] - '-'].ToString(); });
                      return s2+"整";
         
    }

}