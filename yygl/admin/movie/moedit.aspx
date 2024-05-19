<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="moedit.aspx.cs" Inherits="yygl.admin.movie.moedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style6 {
        width: 92%;
            height: 480px;
        }
    .auto-style12 {
        height: 55px;
        text-align: center;
        font-size: 40pt;
            color: #FF66FF;
        }
    .auto-style20 {
        width: 362px;
        text-align: right;
        font-size: x-large;
        height: 38px;
    }
    .auto-style21 {
        width: 421px;
        height: 38px;
    }
    .auto-style7 {
        width: 347px;
    }
    .auto-style17 {
            width: 362px;
            text-align: right;
            font-size: x-large;
            height: 40px;
        }
    .auto-style18 {
            width: 421px;
            height: 40px;
        }
        .auto-style23 {
        font-size: xx-large;
    }
        .auto-style25 {
            width: 421px;
        }
        .auto-style26 {
            width: 362px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6" style="background-color: #99CCFF">
    <tr>
        <td class="auto-style12" colspan="3"><strong>电影维护</strong></td>
    </tr>
    <tr>
        <td class="auto-style20">影片编号</td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="330px"></asp:TextBox>
        </td>
        <td class="auto-style7" rowspan="3">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="mno" DataSourceID="SqlDataSource1" Width="654px">
                <Columns>
                    <asp:BoundField DataField="mno" HeaderText="mno" ReadOnly="True" SortExpression="mno" />
                    <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                    <asp:BoundField DataField="mtime" HeaderText="mtime" SortExpression="mtime" />
                    <asp:BoundField DataField="mpj" HeaderText="mpj" SortExpression="mpj" />
                    <asp:BoundField DataField="zwh" HeaderText="zwh" SortExpression="zwh" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('真的要删除吗?' )"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString15 %>" DeleteCommand="delete from movie where mno=?" ProviderName="<%$ ConnectionStrings:ConnectionString15.ProviderName %>" SelectCommand="select * from movie" UpdateCommand="update movie set mname=?,mtime=?,mpj=?,zwh=? where mno=?"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">影片姓名</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="330px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">座位号</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox3" runat="server" Height="46px" Width="330px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style26"></td>
        <td class="auto-style25">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="66px" Text="查询" Width="157px" OnClick="Button1_Click1" />
        </td>
        <td class="auto-style7">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="66px" Text="重置" Width="157px" OnClick="Button2_Click" />
        </td>
    </tr>
</table>
</asp:Content>
