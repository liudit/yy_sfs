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
    public partial class gzadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script language =javascript >alert ('用户名不得为空');</script>");
                return;
            }
            if (TextBox2.Text == "")
            {
                Response.Write("<script language =javascript >alert ('观众姓名不得为空');</script>");
                return;
            }
            if (RadioButton1.Checked == false && RadioButton2.Checked == false)
            {
                Response.Write("<script language =javascript >alert ('请选择观众性别');</script>");
                return;
            }
            if (TextBox3.Text == "" || TextBox4.Text == "")
            {
                Response.Write("<script language =javascript >alert ('观众的生日，电话不得为空');</script>");
                return;
            }
            if (TextBox1.Text.Length != 10)
            {
                Response.Write("<script language =javascript >alert ('观众编号长度为10位');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();//连接数据库接口文件
            con.Open();
            string sql = " select * from gz where gno ='" + TextBox1.Text + "' ";
            OdbcCommand mycommand = new OdbcCommand(sql, con);//将sql命令放入到执行缓冲区
            OdbcDataReader sdr = mycommand.ExecuteReader(); //执行sql命令并将结果存入到变量sdr
            if (sdr.Read())
            {
                Response.Write("<script language =javascript >alert ('观众编号已存在，请更换编号');</script>");
                return;
            }
            string sex = "";
            if (RadioButton1.Checked == true)
                sex = "男";
            if (RadioButton2.Checked == true)
                sex = "女";
            string sql1 = "insert into gz values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + sex + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            mycommand1.ExecuteNonQuery(); //录入，修改，删除
            Response.Write("<script language =javascript >alert ('录入成功');</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
        }
    }
}