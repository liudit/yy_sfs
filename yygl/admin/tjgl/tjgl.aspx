<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="tjgl.aspx.cs" Inherits="yygl.admin.tjgl.tjgl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 87%;
    }
    .auto-style8 {
        width: 200px;
    }
    .auto-style9 {
        height: 28px;
        width: 200px;
        font-size: x-large;
    }
    .auto-style10 {
        width: 200px;
        height: 27px;
        font-size: x-large;
    }
    .auto-style12 {
        width: 343px;
    }
    .auto-style13 {
        height: 28px;
        width: 343px;
    }
    .auto-style14 {
        height: 27px;
        width: 343px;
    }
    .auto-style15 {
        font-size: 34pt;
        text-align: center;
            color: #FF66FF;
        }
    .auto-style16 {
        font-size: x-large;
    }
    .auto-style18 {
        width: 200px;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6" style="background-color: #99CCFF">
        <tr>
            <td class="auto-style15" colspan="3" style="background-color: #99CCFF"><strong>统计管理</strong></td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #99CCFF"><span class="auto-style16">电影编号</span><asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style16" Text=" " />
            </td>
            <td class="auto-style13" style="background-color: #99CCFF">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dybhl" DataValueField="mno" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style16">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="select ticket.mno,concat(ticket.mno,mname) as dybhl from ticket,movie where movie.mno=ticket.mno"></asp:SqlDataSource>
            </td>
            <td rowspan="4" style="background-color: #99CCFF">
                <asp:Panel ID="Panel1" runat="server" Width="643px">
                    <span class="auto-style16"><strong>购票总数量:</strong></span><strong><asp:Label ID="Label1" runat="server" CssClass="auto-style16"></asp:Label>
                    </strong><span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    购票总金额:</strong></span><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style16"></asp:Label>
                    <br class="auto-style16" />
                    <br />
                    <br />
                    <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>总利润:</strong></span><strong><asp:Label ID="Label3" runat="server" CssClass="auto-style16"></asp:Label>
                    <br />
                    <br />
                    </strong>
                    <br />
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #99CCFF"><span class="auto-style16">年购票</span><asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style16" Text=" " />
            </td>
            <td class="auto-style13" style="background-color: #99CCFF">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ngp" DataValueField="ngp" CssClass="auto-style16">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="select distinct year(ttime) as ngp from ticket"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="background-color: #99CCFF"><span class="auto-style16">月购票</span><asp:CheckBox ID="CheckBox3" runat="server" CssClass="auto-style16" Text=" " />
            </td>
            <td class="auto-style14" style="background-color: #99CCFF">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ygp" DataValueField="ygp" CssClass="auto-style16">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString12 %>" ProviderName="<%$ ConnectionStrings:ConnectionString12.ProviderName %>" SelectCommand="select distinct month(ttime) as ygp from ticket"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #99CCFF"><span class="auto-style16">日购票</span><asp:CheckBox ID="CheckBox4" runat="server" CssClass="auto-style16" Text=" " />
            </td>
            <td class="auto-style12" style="background-color: #99CCFF">
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="dgp" DataValueField="dgp" CssClass="auto-style16">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString13 %>" ProviderName="<%$ ConnectionStrings:ConnectionString13.ProviderName %>" SelectCommand="select distinct day(ttime) as dgp from ticket"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #99CCFF">&nbsp;</td>
            <td class="auto-style12" style="background-color: #99CCFF">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="统计" CssClass="auto-style16" style="height: 54px" />
            </td>
            <td style="background-color: #99CCFF">
                <asp:Button ID="Button2" runat="server" Text="重置" CssClass="auto-style16" OnClick="Button2_Click" />
            </td>
        </tr>
</table>
</asp:Content>
