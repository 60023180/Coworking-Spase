using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class customer_Review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string V = Text.Text;

        string strConn = WebConfigurationManager.ConnectionStrings["coworkConnectionString"].ConnectionString;
        using (SqlConnection Objconn = new SqlConnection(strConn))
        {
            Objconn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = Objconn;
                ObjCM.CommandText = "INSERT INTO review(score, cust_id, text)VALUES(@s, @c, @text)";
                ObjCM.Parameters.AddWithValue("@s", DropDownList1.SelectedValue);
                ObjCM.Parameters.AddWithValue("@c", Session["User_id"]);
                ObjCM.Parameters.AddWithValue("@text", Text.Text);
                if (ObjCM.ExecuteNonQuery() != 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('รีวิวสำเร็จ ')", true);

                }

            }
            Objconn.Close();
        }
    }
}