using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;


namespace Motor_Vehicle_Insurance
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            String CS = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tbl_insurance_check values('" + tbTRN.Text + "', '" + tbReg.Text + "', '" + tbExp.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                tbTRN.Text = string.Empty;
                tbReg.Text = string.Empty;
                tbExp.Text = string.Empty;
            }

            lblMsg.Text = "Added Succesfully!";
            lblMsg.ForeColor = System.Drawing.Color.Green;

        }  
    }
}