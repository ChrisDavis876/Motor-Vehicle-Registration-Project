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

namespace Motor_Vehicle_Fitness
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTable();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tbl_fitness_check values('" + tbTrn.Text + "', '" + tbReg.Text + "', '" + tbExpDate.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                tbTrn.Text = string.Empty;
                tbReg.Text = string.Empty;
                tbExpDate.Text = string.Empty;
            }

            lblMsg.Visible = true;
            lblMsg.Text = "Added Succesfully!";
            lblMsg.ForeColor = System.Drawing.Color.Green;
            BindTable();

        }

        protected void BindTable()
        {
            String CS = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tbl_fitness_check", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ShowData.DataSource = dt;
                        ShowData.DataBind();
                    }

                }
            }
        }
    }
}