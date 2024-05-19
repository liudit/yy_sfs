<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="gpzj.aspx.cs" Inherits="yygl.admin.ticket.gpzj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 94%;
        }
        .auto-style7 {
            width: 240px;
        }
        .auto-style8 {
            width: 317px;
        }
        .auto-style11 {
            height: 27px;
            font-size: 30pt;
            text-align: center;
            color: #FF66FF;
        }
        .auto-style12 {
            width: 240px;
            font-size: x-large;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            margin-right: 100px;
        }
        .auto-style16 {
            width: 1346px;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style16">
        <table class="auto-style6" style="background-color: #99CCFF">
        <tr>
            <td class="auto-style11" colspan="3"><strong>影院管理</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">购票编号</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="45px" Width="288px"></asp:TextBox>
            </td>
            <td rowspan="7" class="auto-style18">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style15" DataKeyNames="tno" DataSourceID="SqlDataSource3" PageSize="8" Width="773px">
                    <Columns>
                        <asp:BoundField DataField="tno" HeaderText="tno" ReadOnly="True" SortExpression="tno" />
                        <asp:BoundField DataField="gno" HeaderText="gno" SortExpression="gno" />
                        <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                        <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                        <asp:BoundField DataField="yno" HeaderText="yno" SortExpression="yno" />
                        <asp:BoundField DataField="gpzj" HeaderText="gpzj" SortExpression="gpzj" />
                        <asp:BoundField DataField="ttime" HeaderText="ttime" SortExpression="ttime" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('真的要删除吗?' )"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString18 %>" DeleteCommand="delete from ticket where tno=?" ProviderName="<%$ ConnectionStrings:ConnectionString18.ProviderName %>" SelectCommand="select * from ticket"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><span class="auto-style17">观众编号</span><asp:CheckBox ID="CheckBox3" runat="server" Text=" " CssClass="auto-style17" />
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="288px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><span class="auto-style17">影片编号</span><asp:CheckBox ID="CheckBox1" runat="server" Text=" " CssClass="auto-style17" />
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="movl" DataValueField="mno">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="select mno ,concat(mno,mname) as movl from movie
"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">场次编号</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" Height="45px" Width="288px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><span class="auto-style17">员工编号</span><asp:CheckBox ID="CheckBox2" runat="server" Text=" " CssClass="auto-style17" />
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ygl" DataValueField="yno">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="select yno ,concat(yno,yname) as ygl from yg
"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">购票总价</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False" TextMode="Number" OnTextChanged="TextBox3_TextChanged" Height="45px" Width="288px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">购票时间</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" OnTextChanged="TextBox6_TextChanged" Height="45px" Width="288px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Text="购票" OnClick="Button1_Click" CssClass="auto-style14" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click" CssClass="auto-style14" />
            </td>
            <td class="auto-style18">
                <asp:Button ID="Button3" runat="server" Text="重置" OnClick="Button3_Click" CssClass="auto-style14" />
            </td>
        </tr>
    </table>
        <br />
    </p>
    </asp:Content>
