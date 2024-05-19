using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;

namespace yygl
{
    public partial class login : System.Web.UI.Page
    {
  
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write(" <script language=javascript> alert('对不起，请输入用户名或密码');</script> ");
                return;
            }
            OdbcConnection con = DB.Lianjie(); //连接数据库接口文件
            con. Open(); //打开数据库
            string sql = " select * from yg where  yno ='" + TextBox1.Text + "' and ypass='" + TextBox2.Text + "'  ";
            OdbcCommand mycommand = new OdbcCommand(sql, con); //将sql命令放入到执行缓冲区
            OdbcDataReader sdr = mycommand.ExecuteReader(); //执行sql命令并将结果存入到变量sdr
            if (sdr.Read())
            { Response.Redirect("admin/default.aspx"); }
            else
            {
                Response.Write(" <script language=javascript> alert('对不起，用户名或密码不正确');</script> ");
                return;

            }

        }
    }
}