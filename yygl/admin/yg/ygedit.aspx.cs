using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间

namespace yygl.admin.yg
{
    public partial class ygedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = " select * from yg where ";
            if (TextBox1.Text != "")
                sql += " yno='" + TextBox1.Text + "' and ";
            if (TextBox2.Text != "")
                sql += " yname='" + TextBox2.Text + "' and ";
            if (TextBox3.Text != "")
                sql += " yphone='" + TextBox3.Text + "' and ";
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
                Response.Write("<script language=javascipt> alert('查无此人');<script>");
                return;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}