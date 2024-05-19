<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="gzedit.aspx.cs" Inherits="yygl.admin.gz.gzedit" %>
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
        width: 226px;
        text-align: right;
        font-size: 24pt;
        height: 38px;
    }
    .auto-style21 {
        width: 281px;
        height: 38px;
    }
    .auto-style7 {
        width: 347px;
    }
    .auto-style17 {
            width: 226px;
            text-align: right;
            font-size: 24pt;
            height: 40px;
        }
    .auto-style18 {
            width: 281px;
            height: 40px;
        }
        .auto-style15 {
        width: 281px;
        }
    .auto-style25 {
        font-size: x-large;
    }
        .auto-style26 {
            width: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6" style="background-color: #99CCFF">
    <tr>
        <td class="auto-style12" colspan="3"><strong>观众维护</strong></td>
    </tr>
    <tr>
        <td class="auto-style20">观众编号</td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox1" runat="server" Height="67px" Width="357px"></asp:TextBox>
        </td>
        <td class="auto-style7" rowspan="3">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="gno" DataSourceID="SqlDataSource1" Height="236px" Width="705px">
                <Columns>
                    <asp:BoundField DataField="gno" HeaderText="gno" ReadOnly="True" SortExpression="gno" />
                    <asp:BoundField DataField="gname" HeaderText="gname" SortExpression="gname" />
                    <asp:BoundField DataField="gsex" HeaderText="gsex" SortExpression="gsex" />
                    <asp:BoundField DataField="gcsrq" HeaderText="gcsrq" SortExpression="gcsrq" />
                    <asp:BoundField DataField="gphone" HeaderText="gphone" SortExpression="gphone" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('真的要删除吗?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString16 %>" DeleteCommand="delete from gz where gno=?" ProviderName="<%$ ConnectionStrings:ConnectionString16.ProviderName %>" SelectCommand="select * from gz" UpdateCommand="update gz set gname=?,gsex=?,gcsrq=?,gphone=? where gno=?"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">观众姓名</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox2" runat="server" Height="61px" Width="357px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">观众电话</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox3" runat="server" Height="66px" Width="357px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style26"></td>
        <td class="auto-style15">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Text="查询" OnClick="Button1_Click" />
        </td>
        <td class="auto-style7" aria-dropeffect="none">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style25" Text="重置" OnClick="Button2_Click1" />
        </td>
    </tr>
</table>
</asp:Content>
