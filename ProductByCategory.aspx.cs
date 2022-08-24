using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ProductByCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data Source=DESKTOP-5QPTR6K\\SQLEXPRESS; Initial Catalog=QL_DTDD1; Integrated Security = true";
            SqlConnection con = new SqlConnection(conStr);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM SanPham WHERE MaLoai = @MaLoai";
            cmd.Connection = con;

            SqlParameter Par = cmd.CreateParameter();
            Par.ParameterName = "@MaLoai";
            Par.Value = Request.QueryString["ml"].ToString();


            cmd.Parameters.Add(Par);

            con.Open();

            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            da.SelectCommand = cmd;
            da.Fill(dt);


            DataList2.DataSource = dt;
            DataList2.DataBind();
            con.Close();
        }
    }
}