<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>
<%@ MasterType VirtualPath="~/MasterPage.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 337px;
        }
        .auto-style2 {
            width: 284px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" OnItemCommand="FormView1_ItemCommand">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="3"  style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; color: #FFFFFF; background-color: #0000FF; text-align:center">
                        <asp:Label ID="Label9" runat="server" Text="THÔNG TIN SẢN PHẨM"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="6">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("DuongDan") %>' Height="261px" Width="304px" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Mã SP"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Tên SP" Font-Bold></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenSP") %>' ForeColor="Blue" Font-Bold></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Mô Tả"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Giá " Font-Bold></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Gia") %>' ForeColor="Red" Font-Bold></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Button ID="btnMuaTiep" runat="server" BackColor="#FF3300" ForeColor="White" Text="MUA TIẾP" Width="130px" PostBackUrl='<%# "~/Home.aspx"  %>'/>
                    </td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="btnGioHang" runat="server" Width="145px" Height="31px" ImageUrl="~/Images/Cart.JPG" CommandName="DATMUA" CommandArgument='<%# Eval("MaSP")  %>'  />
                    </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:FormView>
</asp:Content>

