using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetDayDDL();
            SetMounthDDL();
            SetYearDDL();
            

        }
    }

    private void SetDayDDL()
    {
        for (int i = 1; i <= 31; i++)
        {
            DropDownListDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    private void SetMounthDDL()
    {
        for (int i = 1; i <= 12; i++)
        {
            DropDownListMounth.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }

    private void SetYearDDL()
    {
        int CY = DateTime.Now.Year + 543;
        for (int i = CY - 50; i <= CY + 1; i++)
        {
            DropDownListYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string email = TextBox2.Text;
        string password = TextBox3.Text;
        string re = TextBox4.Text;
        

        string strConn = WebConfigurationManager.ConnectionStrings["coworkConnectionString"].ConnectionString;
        using (SqlConnection Objconn = new SqlConnection(strConn))
        {
            Objconn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = Objconn;
                {
                    ObjCM.Connection = Objconn;
                    ObjCM.CommandText = "INSERT INTO customer(username, email, password, re_password)VALUES(@username, @email, @password, @re_password)";
                    ObjCM.Parameters.AddWithValue("@username", username);
                    ObjCM.Parameters.AddWithValue("@email", email);
                    ObjCM.Parameters.AddWithValue("@password", password);
                    ObjCM.Parameters.AddWithValue("@re_password", re);
                    ObjCM.ExecuteNonQuery();


                }
                Objconn.Close();
            }

        }
    }
}