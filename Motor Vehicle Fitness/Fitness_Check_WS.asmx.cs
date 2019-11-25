using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Motor_Vehicle_Fitness
{
    /// <summary>
    /// Summary description for Fitness_Check_WS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Fitness_Check_WS : System.Web.Services.WebService
    {

        [WebMethod]
        public string Check_Fitness(string regNum)

        {
            var Expired = "";

            try
            {
                if (!string.IsNullOrEmpty(regNum))
                {
                    using (SqlConnection sqlConn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Fitness.mdf;Integrated Security=True"))
                    {
                        using (SqlCommand sqlCmd = new SqlCommand("IsExpired", sqlConn))
                        {
                            sqlConn.Open();
                            sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                            sqlCmd.Parameters.AddWithValue("@regNum", regNum);

                            SqlDataReader reader = sqlCmd.ExecuteReader();
                            if (reader.HasRows)
                            {
                                reader.Read();

                                Expired = Convert.ToString(reader["HasExpired"]);//change to convert the data returned from the stored procedure

                            }
                            else

                                sqlConn.Close();
                        }
                    }
                }
            }
            catch (Exception)
            {

                Console.WriteLine("An error has occurred!");
            }

            return Expired;
        }

    }
}
