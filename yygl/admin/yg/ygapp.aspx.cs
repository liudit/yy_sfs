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
    public partial class ygapp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write(" <script language=javascript> alert('用户名或密码不得为空');</script> ");
                return;
            }
            if (TextBox3.Text == "")
            {
                Response.Write(" <script language=javascript> alert('员工姓名不得为空');</script> ");
                return;
            }
            if (RadioButton1.Checked ==false &&RadioButton2.Checked == false)
            {
                Response.Write(" <script language=javascript> alert('请选择员工性别');</script> ");
                return;
            }
            if (TextBox4.Text == "" || TextBox5.Text == "")
            {
                Response.Write(" <script language=javascript> alert('员工的生日,电话不得为空');</script> ");
                return;
            }
            if(TextBox1.Text.Length !=10)
            {
                Response.Write(" <script language=javascript> alert('员工的编号为10位');</script> ");
                return;
            }
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = "select *from yg where yno='" + TextBox1.Text + "' ";
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            OdbcDataReader sdr = mycommand.ExecuteReader();
            if(sdr.Read())
            {
                Response.Write(" <script language=javascript> alert('员工的编号已存在,请更换编号');</script> ");
                return;
            }
            string sex = "";
            if (RadioButton1.Checked == true)
                sex = "男";
            if (RadioButton2.Checked == true)
                sex = "女";
            string sql1 = " insert into yg values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+sex+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            mycommand1.ExecuteNonQuery();//录入修改删除
            Response.Write(" <script language=javascript> alert('录入成功');</script> ");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
        }
    }
}