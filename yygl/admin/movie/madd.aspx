<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="madd.aspx.cs" Inherits="yygl.admin.movie.madd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style6 {
        width: 50%;
        height: 498px;
            margin-left: 379px;
        }
        .auto-style8 {
            text-align: center;
            font-size: 30pt;
            color: #FF66FF;
        }
        .auto-style11 {
            width: 464px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style17 {
            width: 569px;
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
        .auto-style18 {
            text-align: center;
            width: 464px;
        }
        .auto-style21 {
            font-size: xx-large;
        }
        .auto-style16 {
            text-align: center;
            width: 569px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table class="auto-style6" style="background-color: #99CCFF">
        <tr>
            <td class="auto-style8" colspan="2"><strong>电影录入</strong></td>
        </tr>
        <tr>
            <td class="auto-style11">影片编号</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">电影名字</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">放映时间</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox3" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">票价</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox4" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">座位号</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox5" runat="server" Height="49px" Width="244px"></asp:TextBox>
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
        <br />
    </p>
</asp:Content>
