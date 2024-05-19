using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间

namespace yygl.admin.tjgl
{
    public partial class tjgl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            int ccglsl = 0, gpzje = 0, zlr = 0;
            string sql1 = "select IFNULL(count(tno),0) as sl,IFNULL(sum(gpzj),0) as je from ticket where ";
            if (CheckBox1.Checked == true)
            {
                sql1 += "mno= '" + DropDownList1.Text + "' and";

            }
            if (CheckBox2.Checked == true)
            {
                sql1 += " year(ttime)= '" + DropDownList2.Text + "' and";
            }
            if (CheckBox3.Checked == true)
            {
                sql1 += " month(ttime)= '" + DropDownList3.Text + "' and";
            }
            if (CheckBox4.Checked == true)
            {
                sql1 += " day(ttime)= '" + DropDownList4.Text + "' and";
            }
            sql1 += " '1'='1' ";//复合查询关口语句
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
           
            OdbcDataReader sdr1 = mycommand1.ExecuteReader();
            if (sdr1.Read())
            {
                ccglsl = Convert.ToInt32(sdr1["sl"]);
                gpzje = Convert.ToInt32(sdr1["je"]);
            }
            zlr = gpzje;
            Label1.Text = ccglsl.ToString();
            Label2.Text = gpzje.ToString();
            Label3.Text = zlr.ToString();
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
        }
    }
}