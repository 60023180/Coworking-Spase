using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginCus : Page
{
    private object u;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "gotoCategory")
        {
            Response.Redirect("Category.aspx?category_id=" + e.CommandArgument);
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string u = TextBoxUsername.Text;
        string p = TextBoxPassword.Text;
        Login(u, p);

        if (Session["User"] != null)
        {
            Response.Redirect("/customer/Homecus.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", "alert('login fail ')", true);


        }
    }

    protected void Login(string u, string p)
    {
        System.Diagnostics.Debug.WriteLine("in log in ");

        string strConn = WebConfigurationManager.ConnectionStrings["coworkConnectionString"].ConnectionString;
        using (SqlConnection Objconn = new SqlConnection(strConn))
        {
            Objconn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = Objconn;
                ObjCM.CommandText = "select cus_id, username , password from customer where username = @username AND  password = @password";
                ObjCM.Parameters.AddWithValue("@username", u);
                ObjCM.Parameters.AddWithValue("@password", p);
                SqlDataReader ObjDR = ObjCM.ExecuteReader();
                ObjDR.Read();
                if (ObjDR.HasRows)
                {
                    Session["User"] = ObjDR["username"].ToString();
                    Session["User_id"] = ObjDR["cus_id"].ToString();

                }
                else
                {

                }
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid username or password ')", true);


                }
                ObjDR.Close();

            }
            Objconn.Close();
        }
    }
}