using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            hienThi();
        }
    }
    private void hienThi()
    {
        GridView1.DataSource = Session["GioHang"];
        GridView1.DataBind();

        int soLuong = 0;
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang hang = (GioHang)gioCu[i];
            soLuong = soLuong + hang.SoLuong;
        }

        if (GridView1.Rows.Count > 0)
        {
            GridView1.FooterRow.Cells[3].Text = "Tổng tiền: ";
            GridView1.FooterRow.Cells[4].Text = tongTien().ToString();
        }
    }
    int tongTien()
    {
        int tien = 0;
        ArrayList gioHang = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioHang.Count; i++)
        {
            GioHang gio = (GioHang)gioHang[i];
            tien += gio.ThanhTien;
        }
        return tien;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        hienThi();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView1.EditIndex = -1;
        hienThi();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        GioHang hang = (GioHang)gioCu[e.RowIndex];
        TextBox txtSL = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        hang.SoLuong = int.Parse(txtSL.Text);
        Session["GioHang"] = gioCu;

        Session["SoTien"] = tongTien();
        GridView1.EditIndex = -1;
        hienThi();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        GioHang hang = (GioHang)gioCu[e.RowIndex];
        gioCu.Remove(hang);
        Session["GioHang"] = gioCu;
        Session["SoTien"] = tongTien();
        hienThi();
        Response.Redirect(Request.RawUrl);
    }
    protected void btnMuaTiep_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btnCapNhatSL_Click(object sender, EventArgs e)
    {

    }
    protected void btnThanhToan_Click(object sender, EventArgs e)
    {
        if (Session["TK"] != null)
        {
            Response.Redirect("Payment.aspx");
        }
        else
        {
            Response.Redirect("Regist.aspx");
        }
    }
}