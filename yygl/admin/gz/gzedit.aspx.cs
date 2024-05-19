using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间

namespace yygl.admin.gz
{
    public partial class gzedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  

    
       

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = " select * from gz where ";
            if (TextBox1.Text != "")
                sql += " gno='" + TextBox1.Text + "' and ";
            if (TextBox2.Text != "")
                sql += " gname='" + TextBox2.Text + "' and ";
            if (TextBox3.Text != "")
                sql += " gphone='" + TextBox3.Text + "' and ";
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
                Response.Write("<script language=javascript> alert('查无此人');</script>");
                return;
            }
        }
    }
}