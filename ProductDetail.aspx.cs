using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data Source=DESKTOP-5QPTR6K\\SQLEXPRESS; Initial Catalog=QL_DTDD1; Integrated Security = true";
            SqlConnection con = new SqlConnection(conStr);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM SanPham WHERE MaSP = @MaSP";
            cmd.Connection = con;

            SqlParameter Par = cmd.CreateParameter();
            Par.ParameterName = "@MaSP";
            Par.Value = Request.QueryString["msp"].ToString();
            cmd.Parameters.Add(Par);

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            da.SelectCommand = cmd;
            da.Fill(dt);
            FormView1.DataSource = dt;
            FormView1.DataBind();
            con.Close();
        }
    }
    public int KTraHangTonTai(int msp)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang gh = (GioHang)gioCu[i];
            if (gh.MSP == msp)
            {
                return i;
            }
        }
        return -1;
    }
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == "DATMUA")
        {
            ArrayList gioCu = (ArrayList)Session["GioHang"];
            Label gia = (Label)FormView1.Row.FindControl("Label8");
            int dg = Convert.ToInt32(gia.Text);
            Session["SoTien"] = (int)Session["SoTien"] + dg;

            GioHang hangMoi = new GioHang();
            hangMoi.Hinh = ((Image)FormView1.Row.FindControl("Image1")).ImageUrl;
            hangMoi.MSP = int.Parse(e.CommandArgument.ToString());
            hangMoi.TenSP = ((Label)FormView1.Row.FindControl("Label6")).Text;
            hangMoi.Gia = dg;
            hangMoi.SoLuong = 1;
            int n = KTraHangTonTai(hangMoi.MSP);
            if (n == 1)
            {
                gioCu.Add(hangMoi);
            }
            else
            {
                GioHang nhapHang = (GioHang)gioCu[n];
                nhapHang.SoLuong = nhapHang.SoLuong + 1;
            }
            Session["GioHang"] = gioCu;
            Response.Redirect(Request.RawUrl);
        }
    }
}