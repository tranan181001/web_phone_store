<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="4" style="background-color: blue; text-align:center; font-size: large; color:white; font-family:'Times New Roman'">SEARCH AN SMART PHONE BASE ON NAME AND PRICE</td>
        </tr>
        <tr>
            <td>Enter Phone Name</td>
            <td>
                <asp:TextBox ID="txtPhoneName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Enter Price Between</td>
            <td>
                <asp:TextBox ID="txtLowP" runat="server"></asp:TextBox>
            </td>
            <td>And</td>
            <td>
                <asp:TextBox ID="txtHeightP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style=" text-align:center; font-family:'Courier New'" >
                <asp:Button ID="btnSearch" runat="server" Text="SEARCH"   OnClick="btnSearch_Click"/>
            </td>
        </tr>
    </table>
      <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="4" ForeColor="#333333" Width="634px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("DuongDan") %>' Height="92px" Width="81px" />
                    </td>
                    <td>Mã SP:</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td >Tên SP:</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text='<%# Eval("TenSP") %>' Font-Bold></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Mô Tả:</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Giá:</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text='<%# Eval("Gia") %>' Font-Bold></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>

