<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:TemplateField HeaderText="Hình"></asp:TemplateField>
            <asp:TemplateField HeaderText="Mã SP"></asp:TemplateField>
            <asp:TemplateField HeaderText="Tên SP"></asp:TemplateField>
            <asp:TemplateField HeaderText="Số Lượng"></asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn giá"></asp:TemplateField>
            <asp:TemplateField HeaderText="Thành tiền">
                <FooterTemplate>
                    <h2>Tổng số sản phẩm: <% Response.Write(Session["SoTien"]); %></h2>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Chức năng"></asp:TemplateField>
            <asp:CommandField EditText="Update" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />

    </asp:GridView>

    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" style="text-align:right">
                
                &nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align:center">
                <asp:Button ID="btnMuaTiep" OnClick="btnMuaTiep_Click" runat="server"  BackColor="#FF3300" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Text="&lt; MUA TIẾP" />
            </td>
            <td class="auto-style2" style="text-align:center">
                <asp:Button ID="btnCapNhatSL" OnClick="btnCapNhatSL_Click" runat="server" BackColor="#FF3300" CssClass="auto-style3" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Text="CẬP NHẬT SL" />
            </td>
            <td style="text-align:center">
                <asp:Button ID="btnThanhToan" OnClick="btnThanhToan_Click" runat="server" BackColor="#FF3300" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Text="THANH TOÁN &gt;" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

