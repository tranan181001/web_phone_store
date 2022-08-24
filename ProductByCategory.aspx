<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductByCategory.aspx.cs" Inherits="ProductByCategory" %>
<%@ MasterType VirtualPath="~/MasterPage.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 18px;
        }
        .auto-style2 {
            width: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="2" Width="649px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="5" class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="92px" Width="81px" ImageUrl='<%# "~/Images/" + Eval("DuongDan") %>'/>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Mã SP:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Tên SP:" Font-Bold></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text='<%# Eval("TenSP") %>' Font-Bold></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Mô Tả:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Giá" Font-Bold></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text='<%# Eval("Gia") %>' Font-Bold></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnViewDetail" runat="server" Text="VIEW DETAIL" Width="134px" BackColor="LightBlue"
                            PostBackUrl='<%# "~/ProductDetail.aspx?msp=" + Eval("MaSP") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

