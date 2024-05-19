using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间

namespace yygl.admin.wh
{
    public partial class mmwh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                Response.Write("<script language=javascript> alert('用户名或密码或新密码或确认新密码不得为空');</script>");
                return;
            }
            if (TextBox3.Text != TextBox4.Text)
            {
                Response.Write("<script language=javascript> alert('新密码和确认新密码不一致');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql1 = "select *from yg where yno='" + TextBox1.Text + "' and ypass='"+TextBox2.Text+"'";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            OdbcDataReader sdr = mycommand1.ExecuteReader();
            if (sdr.Read())
            {
                string sql2 = "update yg set ypass='" + TextBox3.Text + "' where yno='" + TextBox1.Text + "'";
                OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
                mycommand2.ExecuteReader();
                Response.Write("<script language=javascript> alert('修改成功');</script>");
                return;
            }
            else
            {
                Response.Write("<script language=javascript> alert('用户名或密码不正确');</script>");
                return;
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
    
        }
    }
}