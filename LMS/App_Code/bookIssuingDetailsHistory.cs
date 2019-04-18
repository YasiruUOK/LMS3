using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class bookIssuingDetailsHistory
    {
        public string bookID { get; set; }
        public string bookTitle { get; set; }
        public string studentID { get; set; }
        public DateTime returnDate { get; set; }
        public string returnDateString { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public ReturnData releaseTheBook(bookIssuingDetailsHistory detailsHistory)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "insert into bookIssuingDetailsHistory (bookID,studentID,returnDate) values (@bookID,@studentID,@returnDate) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            string returnDate = new CommonFunctions().getCurrentDate();
            cmd.Parameters.AddWithValue("@bookID", detailsHistory.bookID);
            cmd.Parameters.AddWithValue("@studentID", detailsHistory.studentID);
            cmd.Parameters.AddWithValue("@returnDate", returnDate);

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
                new bookIssuingDetails().deleteFromBookIssungDetails(detailsHistory.bookID, detailsHistory.studentID);
                rd.status = 1;
                rd.message = "OK";
                // rd.para1 = temp_invoice_id;
            }

            return rd;
        }

        
    }
}