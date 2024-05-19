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
    public partial class madd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script language =javascript >alert ('电影编号不得为空');</script>");
                return;
            }
            if (TextBox2.Text == "")
            {
                Response.Write("<script language =javascript >alert ('电影名称不得为空');</script>");
                return;
            }
            if (TextBox3.Text == "" || TextBox5.Text == "" || TextBox4.Text == "")
            {
                Response.Write("<script language =javascript >alert ('电影放映时间，票价，座位号不得为空');</script>");
                return;
            }
            if (TextBox1.Text.Length != 10)
            {
                Response.Write("<script language =javascript >alert ('影片编号长度为10位');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();//连接数据库接口文件
            con.Open();
            string sql = " select * from movie where mno ='" + TextBox1.Text + "' ";
            OdbcCommand mycommand = new OdbcCommand(sql, con);//将sql命令放入到执行缓冲区
            OdbcDataReader sdr = mycommand.ExecuteReader(); //执行sql命令并将结果存入到变量sdr
            if (sdr.Read())
            {
                Response.Write("<script language =javascript >alert ('电影编号已存在，请更换编号');</script>");
                return;
            }
            string sql1 = "insert into movie values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
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
            TextBox5.Text = "";

        }
    }
}