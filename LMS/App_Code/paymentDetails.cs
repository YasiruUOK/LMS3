using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class paymentDetails
    {
        public int paymentID { get; set; }
        public string studentID { get; set; }
        public double paidAmount { get; set; }
        public string reason { get; set; }
        public DateTime paidDate { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        internal ReturnData makePayments(string studentID, double totalFineAmount, string reason, string TransactionID, string branchName, bool PaymentApproved)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "insert into paymentDetails (studentID,paidAmount,reason,paidDate,TransactionID, branchName, PaymentApproved) values (@studentID,@paidAmount,@reason,@paidDate,@TransactionID,@branchName, @PaymentApproved) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            cmd.Parameters.AddWithValue("@paidAmount",totalFineAmount);
            cmd.Parameters.AddWithValue("@reason", reason);
            CommonFunctions c = new CommonFunctions();
            cmd.Parameters.AddWithValue("@paidDate", c.getServerDate());
            cmd.Parameters.AddWithValue("@TransactionID", TransactionID);
            cmd.Parameters.AddWithValue("@branchName", branchName);
            cmd.Parameters.AddWithValue("@PaymentApproved", PaymentApproved);
            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                rd.status = 0;
                rd.message = Ex.Message;
            }
            con.Close();

            if (count > 0)
            {
                rd.status = 1;
                rd.message = "OK";
            }

            return rd;
        }

        
    }
}