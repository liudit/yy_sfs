using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间

namespace yygl.admin.ticket
{
    public partial class gpzj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox6.Text = DateTime.Now.ToString("yyyy-MM-dd");
            string gpdh = DateTime.Now.Year.ToString();//取当前年
            gpdh += DateTime.Now.Month.ToString();
            gpdh += DateTime.Now.Day.ToString();
            gpdh += DateTime.Now.Hour.ToString();
            gpdh += DateTime.Now.Minute.ToString();
            gpdh += DateTime.Now.Second.ToString();
            TextBox1.Text = gpdh;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
          

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            if (TextBox5.Text == "")
            {
                Response.Redirect("<script language=javascript>alert('场次编号不得为空');</script>");
                return;
            }
             OdbcConnection con = DB.Lianjie();
             con.Open();
            int pj = 0, fdl = 0,zpj=0;
            string sql1= " select mpj from movie where  mno='"+DropDownList3.Text+"'"; 
             OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
             OdbcDataReader sdr1 = mycommand1.ExecuteReader();
            if(sdr1.Read())
            { pj = Convert.ToInt32(sdr1["mpj"]); }
            string sql2 = " select fdjg from showtime where  sno='" + TextBox5.Text + "'";
            OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
            OdbcDataReader sdr2 = mycommand2.ExecuteReader();
            if (sdr2.Read())
            { fdl = Convert.ToInt32(sdr2["fdjg"]); }
            zpj = pj * fdl;
           // Response.Write(pj);
           // Response.Write("**");
            //Response.Write(fdl);
            //Response.Write(sql2);
           // Response.Write("**");
           // Response.Write(zpj);
            //Response.End();
            TextBox3.Text = zpj.ToString();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = " insert into ticket values ( '" + TextBox1.Text + "', '" + TextBox2.Text + "' ,'" + DropDownList3.Text + "' ,'" + TextBox5.Text + " ' ";
            sql += ",'" + DropDownList2.Text + "', " + TextBox3.Text + ",'" + TextBox6.Text + "' ) ";
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            mycommand.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('购票成功');</script>");
            string sql3 = " select * from ticket order by ttime desc ";
            OdbcCommand mycommand3 = new OdbcCommand(sql3, con);
            OdbcDataReader sdr3 = mycommand3.ExecuteReader();
            if (sdr3.Read())
            {
                SqlDataSource3.SelectCommand = sql3;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = "select * from ticket where ";
            if (CheckBox3.Checked == true)
                sql += "gno='" + TextBox2.Text + "' and";
            if (CheckBox1.Checked == true)
                sql += "mno='" + DropDownList3.Text + "' and";
            if (CheckBox2.Checked == true)
                sql += "yno='" + DropDownList2.Text + "' and";
            sql += " '1'='1' ";//复合查询关口语句
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            OdbcDataReader sdr = mycommand.ExecuteReader();
            if (sdr.Read())
            {
                SqlDataSource3.SelectCommand = sql;
                GridView1.DataBind();
            }
            else
            {

                Response.Write("<script language=javascript>alert('没有购票记录');</script>");
                return;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";
            TextBox5.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
        }
    }
}