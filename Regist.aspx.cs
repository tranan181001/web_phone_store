using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Regist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["QL_DTDD1ConnectionStrings"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);
        con.Open();


        String strcmd1 = "select count(*) from KhachHang where Email = '" + txtEmail.Text + "' ";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strcmd1;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;

        int kt = (int)cmd.ExecuteScalar();
        if (kt > 0)
        {
            lblKq.Text = "Email đã tồn tại";
            txtEmail.Focus();
        }
        else
        {
            string Strcmd = "insert into KhachHang values ('" + txtMaKH.Text + " ', " + "'" + txtHoTen.Text + " ', "
                + "'" + txtDienThoai.Text + "', " + "'" + RadioButtonList1.SelectedItem.Value + "', " + "'" + CheckBoxList1.SelectedItem.Value + "', "
                + "'" + txtEmail.Text + "', " + "'" + txtMatKhau.Text + "')";

            cmd.CommandText = Strcmd;
            int kq = cmd.ExecuteNonQuery();
            if (kq == 1)
            {
                lblKq.Text = "Đăng ký thành công";
                Session["TK"] = txtMaKH.Text;
            }
        }
        con.Close();
    }
}