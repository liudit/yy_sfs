using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间

namespace yygl.admin.movie
{
    public partial class moedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = " select * from movie where ";
            if (TextBox1.Text != "")
                sql += " mno='" + TextBox1.Text + "' and ";
            if (TextBox2.Text != "")
                sql += " mname='" + TextBox2.Text + "' and ";
            if (TextBox3.Text != "")
                sql += " zwh='" + TextBox3.Text + "' and ";
            sql += " '1'='1' ";//复合查询关口语句
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            OdbcDataReader sdr = mycommand.ExecuteReader(); //执行sql命令并将结果存入到变量sdr
            if (sdr.Read())
            {
                SqlDataSource1.SelectCommand = sql;//让sql执行结果加入odbc数据源
                GridView1.DataBind();//刷新gridview窗口

            }
            else
            {
                Response.Write("<script language=javascript> alert('查不到此电影');</script>");
                return;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}