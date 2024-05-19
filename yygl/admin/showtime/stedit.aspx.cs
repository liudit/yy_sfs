using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间
namespace yygl.admin.showtime
{
    public partial class stedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = " select * from showtime where ";
            if (TextBox1.Text != "")
                sql += " sno='" + TextBox1.Text + "' and ";
            if (TextBox2.Text != "")
                sql += " stime='" + TextBox2.Text + "' and ";
            if (TextBox3.Text != "")
                sql += " fdjg='" + TextBox3.Text + "' and ";
            sql += " '1'='1' ";//复合查询关口语句
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            OdbcDataReader sdr = mycommand.ExecuteReader();
            if (sdr.Read())
            {
                SqlDataSource1.SelectCommand = sql;//让odbc数据源将sql执行结果加入到odbc数据源
                GridView1.DataBind();

            }
            else
            {
                Response.Write("<script language=javascript> alert('没有这个场次');</script>");
                
                return;
            }
        }
    }
}