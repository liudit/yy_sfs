<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="ygapp.aspx.cs" Inherits="yygl.admin.yg.ygapp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 50%;
        height: 498px;
            margin-left: 379px;
            position: absolute;
            left: 172px;
            top: 244px;
        }
        .auto-style8 {
            text-align: center;
            font-size: 30pt;
            color: #FF66FF;
        }
        .auto-style9 {
            width: 464px;
            height: 28px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style10 {
            height: 28px;
            width: 569px;
        }
        .auto-style11 {
            width: 464px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style12 {
            width: 464px;
            font-size: x-large;
            text-align: right;
            height: 31px;
        }
        .auto-style13 {
            height: 31px;
            width: 569px;
        }
        .auto-style14 {
            width: 464px;
            font-size: x-large;
            text-align: right;
            height: 32px;
        }
        .auto-style15 {
            height: 32px;
            width: 569px;
        }
        .auto-style16 {
            text-align: center;
            width: 569px;
        }
        .auto-style17 {
            width: 569px;
        }
        .auto-style18 {
            text-align: center;
            width: 464px;
        }
        .auto-style21 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table class="auto-style6" style="background-color: #99CCFF">
        <tr>
            <td class="auto-style8" colspan="2"><strong>员工录入</strong></td>
        </tr>
        <tr>
            <td class="auto-style11">员工编号</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">员工密码</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="37px" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">员工姓名</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">员工性别</td>
            <td class="auto-style17">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a1" OnCheckedChanged="RadioButton1_CheckedChanged" Text="男" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a1" Text="女" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">员工生日</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Date" Height="42px" Width="223px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">员工电话</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="录入" CssClass="auto-style21" />
                </strong>
            </td>
            <td class="auto-style16">
                <strong>
                <asp:Button ID="Button2" runat="server" Text="重置" CssClass="auto-style21" OnClick="Button2_Click" />
                </strong>
            </td>
        </tr>
    </table>
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
