<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="gzadd.aspx.cs" Inherits="yygl.admin.gz.gzadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 74%;
            position: absolute;
            left: 386px;
            top: 283px;
        }
        .auto-style7 {
            text-align: center;
            font-size: 30pt;
            color: #FF66FF;
        }
        .auto-style8 {
            width: 421px;
            text-align: center;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            width: 421px;
            font-size: xx-large;
            text-align: right;
        }
        .auto-style11 {
            width: 421px;
            font-size: xx-large;
            height: 46px;
            text-align: right;
        }
        .auto-style12 {
            height: 46px;
            width: 554px;
        }
        .auto-style13 {
            text-align: center;
            width: 554px;
        }
        .auto-style14 {
            font-size: xx-large;
        }
        .auto-style15 {
            width: 554px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <table class="auto-style6">
        <tr>
            <td class="auto-style7" colspan="2" style="background-color: #99CCFF"><strong>观众录入</strong></td>
        </tr>
        <tr>
            <td class="auto-style11" style="background-color: #99CCFF">观众编号</td>
            <td class="auto-style12" style="background-color: #99CCFF">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="44px" Width="372px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="background-color: #99CCFF">观众姓名</td>
            <td style="background-color: #99CCFF" class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="44px" Width="372px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="background-color: #99CCFF">观众性别</td>
            <td style="background-color: #99CCFF" class="auto-style15">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a1"  Text="男" CssClass="auto-style9" />
                <span class="auto-style9">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a1" Text="女" CssClass="auto-style9" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="background-color: #99CCFF">出生日期</td>
            <td style="background-color: #99CCFF" class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" Height="44px" Width="372px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="background-color: #99CCFF">联系电话</td>
            <td style="background-color: #99CCFF" class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style9" Height="44px" Width="372px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #99CCFF">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="录入" />
            </td>
            <td class="auto-style13" style="background-color: #99CCFF">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style14" OnClick="Button2_Click" Text="重置" />
            </td>
        </tr>
    </table>
</asp:Content>
