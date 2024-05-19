<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="mmwh.aspx.cs" Inherits="yygl.admin.wh.mmwh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 66%;
            position: absolute;
            left: 431px;
            top: 278px;
        }
    .auto-style7 {
        height: 28px;
        text-align: center;
        width: 682px;
    }
    .auto-style8 {
            text-align: center;
            font-size: 24pt;
            width: 682px;
        }
    .auto-style9 {
        height: 28px;
        text-align: center;
        font-size: 24pt;
        width: 682px;
    }
    .auto-style10 {
        height: 28px;
        width: 656px;
    }
    .auto-style11 {
        width: 656px;
    }
    .auto-style12 {
        text-align: center;
        font-size: 30pt;
        color: #FF66FF;
    }
    .auto-style13 {
        font-size: x-large;
    }
    .auto-style14 {
        height: 28px;
        width: 656px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<table class="auto-style6">
    <tr>
        <td class="auto-style12" colspan="2" style="background-color: #99CCFF"><strong>密码维护</strong></td>
    </tr>
    <tr>
        <td class="auto-style9" style="background-color: #99CCFF">账号名</td>
        <td class="auto-style10" style="background-color: #99CCFF">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13" Height="53px" Width="455px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="background-color: #99CCFF">原密码</td>
        <td class="auto-style11" style="background-color: #99CCFF">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13" Height="53px" Width="455px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="background-color: #99CCFF">新密码</td>
        <td class="auto-style11" style="background-color: #99CCFF">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style13" Height="53px" Width="455px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="background-color: #99CCFF">确认新密码</td>
        <td class="auto-style11" style="background-color: #99CCFF">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13" Height="53px" TextMode="Password" Width="455px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" style="background-color: #99CCFF">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="58px" OnClick="Button1_Click" Text="修改" Width="127px" />
        </td>
        <td class="auto-style14" style="background-color: #99CCFF">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="55px" OnClick="Button2_Click" Text="重置" Width="121px" />
        </td>
    </tr>
</table>
<p>
</p>
</asp:Content>
