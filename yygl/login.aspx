<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="yygl.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            height: 431px;
            position: absolute;
            left: 481px;
            top: 269px;
        }
        .auto-style2 {
            text-align: center;
            font-size: 36pt;
            color: #FF66FF;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
            width: 503px;
        }
        .auto-style6 {
            text-align: right;
            width: 503px;
            font-size: 28pt;
        }
        .auto-style7 {
            font-size: 30pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1" style="background-color: #99CCFF;">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>登录窗口</strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">用户名</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="65px" Width="402px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">密码</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="65px" Width="402px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Text="登录" OnClick="Button1_Click1" CssClass="auto-style7" Height="70px" Width="226px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
