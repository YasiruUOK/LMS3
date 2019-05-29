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
        public DateTime issuedDate { get; set; }
        public string returnDateString { get; set; }
        public string bookCode { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public DateTime issueDate { get; set; }
        public double fineAmount { get; set; }
        public string issueDateString { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public ReturnData releaseTheBook(bookIssuingDetailsHistory detailsHistory)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "insert into bookIssuingDetailsHistory (bookID,studentID,returnDate,issueDate) values (@bookID,@studentID,@returnDate,@issueDate) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            string returnDate = new CommonFunctions().getCurrentDate();
            string issuedDate = new bookIssuingDetails().getBookIssuedDate(detailsHistory.studentID, detailsHistory.bookID);
            cmd.Parameters.AddWithValue("@bookID", detailsHistory.bookID);
            cmd.Parameters.AddWithValue("@studentID", detailsHistory.studentID);
            cmd.Parameters.AddWithValue("@returnDate", returnDate);
            cmd.Parameters.AddWithValue("@issueDate", issuedDate);

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

        internal List<bookIssuingDetailsHistory> getBookIssuedDetailsHistoryFromStudentID(string student_ID)
        {
            bookIssuingDetailsHistory bookIssuingDetails = new bookIssuingDetailsHistory();
            List<bookIssuingDetailsHistory> list = new List<bookIssuingDetailsHistory>();
            student_ID = "%" + student_ID + "%";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetailsHistory BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID=BCD.bookID and BCD.bookCode=BID.bookID and BID.studentID=SD.studentID and SD.studentID Like @student_ID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@student_ID", student_ID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetailsHistory c = new bookIssuingDetailsHistory();
                c.bookCode = rdr["bookID"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = new bookIssuingDetails().getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                list.Add(c);
            }
            con.Close();
            return list;
        }
    }
}