using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Threading;


namespace Motor_Vehicle_Registration
{
    public partial class Renew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRenew_Click(object sender, EventArgs e)
        {
            ServiceReference1.Insurance_Check_WSSoapClient client =
                new ServiceReference1.Insurance_Check_WSSoapClient();
           String IsInsurExpired =  client.Check_Insurance(tbPlateNum.Text.Trim());


            Fitness_Check_Service.Fitness_Check_WSSoapClient client2 =
                            new Fitness_Check_Service.Fitness_Check_WSSoapClient();
            String IsFitnessExpired = client2.Check_Fitness(tbPlateNum.Text);

            lblMsg1.Text = "";
            lblMsg2.Text = "";

            if (Convert.ToInt32(IsInsurExpired) == 0)
            {
                //insurance is valid

                if (Convert.ToInt32(IsFitnessExpired) == 0)
                {
                    //both checks are valid
                    lblMsg2.Text = "Fitness Valid";
                    lblMsg2.Visible = true;
                    lblMsg2.ForeColor = System.Drawing.Color.Green; 
                    lblMsg1.Text = "Insurance Valid";
                    lblMsg1.Visible = true;
                    lblMsg1.ForeColor = System.Drawing.Color.Green;
                    Thread.Sleep(3000);
                    Response.Redirect("Print Registration.aspx?reg_num="+ tbPlateNum.Text);

                }
                else
                {

                    lblMsg2.Text = "Fitness Expired";
                    lblMsg2.Visible = true;
                    lblMsg2.ForeColor = System.Drawing.Color.Red;
                    

                }

            }
            else
            {
                
                lblMsg1.Text = "Insurance Expired";
                lblMsg1.Visible = true;
                lblMsg1.ForeColor = System.Drawing.Color.Red;

            }

           if (Convert.ToInt32(IsInsurExpired) == 1 && (Convert.ToInt32(IsFitnessExpired) == 1))
            {
                lblMsg1.Text = "Insurance Expired";
                lblMsg1.Visible = true;
                lblMsg1.ForeColor = System.Drawing.Color.Red;
                lblMsg2.Text = "Fitness Expired";
                lblMsg2.Visible = true;
                lblMsg2.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}