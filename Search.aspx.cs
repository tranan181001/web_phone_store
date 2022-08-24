using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data Source=DESKTOP-5QPTR6K\\SQLEXPRESS; Initial Catalog=QL_DTDD1; Integrated Security = true";
            SqlConnection con = new SqlConnection(conStr);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM SanPham";
            cmd.Connection = con;
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);

            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String conStr = "Data Source= DESKTOP-5QPTR6K\\SQLEXPRESS; Initial Catalog=QL_DTDD1; Integrated Security = true";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM SanPham WHERE TenSP LIKE '%'+ @TenSP +'%' AND (Gia BETWEEN @LowPrice AND @HeightPrice)";
            cmd.Connection = con;
            con.Open();


            SqlParameter par1 = new SqlParameter("@TenSP", txtPhoneName.Text);
            cmd.Parameters.Add(par1);

            SqlParameter par2 = new SqlParameter("@LowPrice", txtLowP.Text);
            cmd.Parameters.Add(par2);

            SqlParameter par3 = new SqlParameter("@HeightPrice", txtHeightP.Text);
            cmd.Parameters.Add(par3);



            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            con.Close();

        }
    }
}