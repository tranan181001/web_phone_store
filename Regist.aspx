<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <center><h3 style="font-family:'Times New Roman'; color:blue">ĐĂNG KÝ</h3></center>
        <tr>
            <td colspan="3" style="text-align:center; background:blue; color:white; font-family:'Times New Roman'; font-size:large" >THÔNG TIN CÁ NHÂN</td>
        </tr>
        <tr>
            <td>Mã Khách hàng</td>
            <td>
                <asp:TextBox ID="txtMaKH" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Tên Khách hàng</td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Điện thoại</td>
            <td>
                <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Giới tính</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="121px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Sở thích</td>
            <td colspan="2" rowspan="3">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="33px" RepeatColumns="2" RepeatDirection="Horizontal" >
                    <asp:ListItem>Music</asp:ListItem>
                    <asp:ListItem>Sport</asp:ListItem>
                    <asp:ListItem>Watching TV</asp:ListItem>
                    <asp:ListItem>Shopping</asp:ListItem>
                    <asp:ListItem>Cooking</asp:ListItem>
                    <asp:ListItem>Sufering Internet</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center; background:blue; color:white; font-family:'Times New Roman'; font-size:large">THÔNG TIN ĐĂNG NHẬP</td>
        </tr>
        <tr>
            <td>Địa chỉ Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Nhập lại mật khẩu</td>
            <td>
                <asp:TextBox ID="txtNhapLaiMatKhau" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center;">
                <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" Font-Bold Font-Names='Times New Roman' BackColor="#ff3300" OnClick="btnDangKy_Click"/>
                <asp:Label ID="lblKq" runat="server" Text='Kq'></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

