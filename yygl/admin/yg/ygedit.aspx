<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="ygedit.aspx.cs" Inherits="yygl.admin.yg.ygedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 85%;
            height: 480px;
            position: absolute;
            left: 231px;
            top: 236px;
        }
    .auto-style12 {
        height: 97px;
        text-align: center;
        font-size: 40pt;
            color: #FF66FF;
        }
    .auto-style15 {
        width: 281px;
        }
    .auto-style17 {
            width: 145px;
            text-align: right;
            font-size: x-large;
            height: 40px;
        }
    .auto-style18 {
            width: 281px;
            height: 40px;
        }
    .auto-style20 {
        width: 145px;
        text-align: right;
        font-size: x-large;
        height: 38px;
    }
    .auto-style21 {
        width: 281px;
        height: 38px;
    }
    .auto-style23 {
        font-size: xx-large;
    }
        .auto-style24 {
            width: 145px;
        }
        .auto-style25 {
            width: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6" style="background-color: #99CCFF">
    <tr>
        <td class="auto-style12" colspan="3"><strong>员工维护</strong></td>
    </tr>
    <tr>
        <td class="auto-style20">员工编号</td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="292px"></asp:TextBox>
        </td>
        <td class="auto-style25" rowspan="3">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="yno" AllowPaging="True" Height="254px" Width="731px" >
                <Columns>
                    <asp:BoundField DataField="yno" HeaderText="yno" ReadOnly="True" SortExpression="yno" />
                    <asp:BoundField DataField="ypass" HeaderText="ypass" SortExpression="ypass" />
                    <asp:BoundField DataField="yname" HeaderText="yname" SortExpression="yname" />
                    <asp:BoundField DataField="ysex" HeaderText="ysex" SortExpression="ysex" />
                    <asp:BoundField DataField="ycsrq" HeaderText="ycsrq" SortExpression="ycsrq" />
                    <asp:BoundField DataField="yphone" HeaderText="yphone" SortExpression="yphone" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from yg where yno=?" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from yg" UpdateCommand="update yg set ypass=?,yname=?,ysex=?,ycsrq=?,yphone=? where yno=?"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">员工姓名</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="293px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">员工电话</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox3" runat="server" Height="46px" Width="293px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style24"></td>
        <td class="auto-style15">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="66px" Text="查询" Width="157px" OnClick="Button1_Click1" />
        </td>
        <td class="auto-style25">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="66px" Text="重置" Width="157px" OnClick="Button2_Click" />
        </td>
    </tr>
</table>
</asp:Content>
