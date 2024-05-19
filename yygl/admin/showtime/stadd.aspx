<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="stadd.aspx.cs" Inherits="yygl.admin.showtime.stadd" %>
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
    <table class="auto-style6" style="background-color: #99CCFF">
        <tr>
            <td class="auto-style8" colspan="2"><strong>场次录入</strong></td>
        </tr>
        <tr>
            <td class="auto-style11">场次编号</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">场次时间</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">浮动价格</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="49px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">备注</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox4" runat="server" Height="49px" Width="244px"></asp:TextBox>
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
    <p>
    </p>
</asp:Content>
