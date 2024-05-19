<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="stedit.aspx.cs" Inherits="yygl.admin.showtime.stedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 94%;
        }
        .auto-style8 {
            font-size: 32pt;
            text-align: center;
            color: #FF66FF;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            height: 28px;
            font-size: 24pt;
            width: 232px;
            text-align: right;
        }
        .auto-style11 {
            font-size: 24pt;
            width: 232px;
            text-align: right;
        }
        .auto-style12 {
            width: 232px;
        }
        .auto-style13 {
            width: 283px;
        }
        .auto-style14 {
            height: 28px;
            width: 283px;
        }
        .auto-style15 {
            width: 618px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style6">
            <tr>
                <td class="auto-style8" colspan="3" style="background-color: #99CCFF"><strong>场次维护</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #99CCFF">场次编号</td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox1" runat="server" Height="57px" Width="252px"></asp:TextBox>
                </td>
                <td rowspan="3" style="background-color: #99CCFF" class="auto-style15">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource1" Width="736px">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" SortExpression="sno" />
                            <asp:BoundField DataField="stime" HeaderText="stime" SortExpression="stime" />
                            <asp:BoundField DataField="fdjg" HeaderText="fdjg" SortExpression="fdjg" />
                            <asp:BoundField DataField="bz" HeaderText="bz" SortExpression="bz" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString17 %>" DeleteCommand="delete from showtime where sno=?" ProviderName="<%$ ConnectionStrings:ConnectionString17.ProviderName %>" SelectCommand="select * from showtime" UpdateCommand="update showtime set stime=? ,fdjg=? ,bz=?  where sno=?"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #99CCFF">场次时间</td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox2" runat="server" Height="56px" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-color: #99CCFF">浮动价格</td>
                <td class="auto-style14" style="background-color: #99CCFF">
                    <asp:TextBox ID="TextBox3" runat="server" Height="60px" Width="252px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="background-color: #99CCFF">
                    &nbsp;</td>
                <td class="auto-style13" style="background-color: #99CCFF">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Text="查询" OnClick="Button2_Click" Height="63px" Width="124px" />
                </td>
                <td style="background-color: #99CCFF" class="auto-style15">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" OnClick="Button1_Click" Text="重置" Height="58px" Width="128px" />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
