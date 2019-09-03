using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class bookReserveDetails
    {
        public string bookCode { get; set; }
        public string bookID { get; set; }
        public string studentID { get; set; }
        public DateTime reservedDate { get; set; }
        public DateTime releseBeforeDate { get; set; }

        public string reservedDateString { get; set; }
        public string releseBeforeDateString { get; set; }
        public string bookTitle { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        internal ReturnData ReserveBook(bookReserveDetails bookReserveDetails)
        {
            ReturnData rd = new ReturnData();
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "select bookCode from bookCodeDetails where bookID=@bookID and Borrowed='0' and Active='1' and reserved='0'";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookReserveDetails.bookID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                bookCode = rdr["bookCode"].ToString();
                rd = checkCountOfBooksReserved(bookReserveDetails.studentID);
                if (rd.status >0)
                {
                    rd = changeReserveStatus(bookCode);
                    if (rd.status > 0)
                    {
                        rd = insertReserveDetails(bookReserveDetails.bookCode, bookReserveDetails.studentID);
                    }
                }
                
            }
            else
            {
                rd.message = "No Book to Reserve";
                rd.status = 0;
            }
            con.Close();
            return rd;
        }

        private ReturnData checkCountOfBooksReserved(string studentID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select count(*) as BookCount from bookReserveDetails where studentID=@studentID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ReturnData rd = new ReturnData();
            int bookCount = 0;
            if (rdr.HasRows)
            {
                rdr.Read();
                bookCount = int.Parse(rdr["BookCount"].ToString());
            }
            if (bookCount < 2)
            {
                rd.status = 1;
            }
            else
            {
                rd.message = "Student Has alredy Reserved 2 Books!";
                rd.status = 0;
            }
            con.Close();
            return rd;
        }

        private ReturnData insertReserveDetails(string bookCode, string studentID)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "insert into bookReserveDetails (bookCode,studentID,reservedDate,releseBeforeDate) values (@bookCode,@studentID,@reservedDate,@releseBeforeDate) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookCode", bookCode);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            cmd.Parameters.AddWithValue("@reservedDate", new CommonFunctions().getCurrentDate());
            cmd.Parameters.AddWithValue("@releseBeforeDate", getReleseBeforeDateDate());

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
                //BookCodeDetails bookCodeDetails = new BookCodeDetails();
                //bookCodeDetails.updateBorrowedStatus(bookID);
                // rd.para1 = temp_invoice_id;
            }

            return rd;
        }

        private ReturnData changeReserveStatus(string bookCode)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "update bookCodeDetails set reserved='True' where bookCode=@bookID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookCode);
            ReturnData rd = new ReturnData();
            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                rd.status = 0;
                //rd.message = Ex.Message;
            }
            con.Close();

            if (count > 0)
            {

                rd.status = 1;
                //rd.message = "OK";
                // rd.para1 = temp_invoice_id;
            }
            else
            {
                rd.status = 0;
            }
            return rd;
        }
        public string getReleseBeforeDateDate()
        {
            string dt = "";
            DateTime d;
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select CONVERT(date,GETDATE()+2) as currDate";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                //dt = rdr["currDate"].ToString();
                d = Convert.ToDateTime(rdr["currDate"]);
                dt = d.ToString("yyyy-MM-dd");
            }
            con.Close();
            return dt;

        }

        internal ReturnData isBookNotReserved(string bookID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from bookReserveDetails where bookCode=@bookCode ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookCode", bookID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ReturnData rd = new ReturnData();
            if (rdr.HasRows)
            {
                rd.status = 0;
            }
            else
            {
                rd.status = 1;
            }
            con.Close();
            return rd;
        }

        internal ReturnData isBookReservedByThisStudent(string studentID, string bookID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from bookReserveDetails where bookCode=@bookCode AND studentID=@studentID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookCode", bookID);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ReturnData rd = new ReturnData();
            if (rdr.HasRows)
            {
                rd.status = 1;
            }
            else
            {
                rd.status = 0;
            }
            con.Close();
            return rd;
        }

        internal ReturnData updateReserveBookDetails()
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "Delete from bookReserveDetails where releseBeforeDate<GETDATE()";

            SqlCommand cmd = new SqlCommand(sql, con);

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

        internal List<bookReserveDetails> getBookReservedDetailsFromStudentID(string student_ID)
        {
            bookReserveDetails bookReserveDetails = new bookReserveDetails();
            List<bookReserveDetails> list = new List<bookReserveDetails>();
            CommonFunctions cf = new CommonFunctions();
            student_ID = "%" + student_ID + "%";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select BRD.studentID, BRD.bookCode, BD.bookTitle, BRD.reservedDate, BRD.releseBeforeDate From bookReserveDetails BRD, bookCodeDetails BCD,bookDetails BD where BRD.bookCode=BCD.bookCode AND BCD.bookID=BD.bookID AND BRD.studentID Like @student_ID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@student_ID", student_ID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookReserveDetails c = new bookReserveDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.reservedDate = DateTime.Parse(rdr["reservedDate"].ToString());
                c.releseBeforeDate = DateTime.Parse(rdr["releseBeforeDate"].ToString());
                c.reservedDateString = String.Format("{0:yyyy - MM - dd}", c.reservedDate);
                c.releseBeforeDateString = String.Format("{0:yyyy - MM - dd}", c.releseBeforeDate);
                c.studentID = rdr["studentID"].ToString();
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal ReturnData deleteReservedBook(bookReserveDetails bookReserveDetails)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "Delete from bookReserveDetails where bookCode=@bookCode AND studentID=@studentID";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookCode", bookReserveDetails.bookCode);
            cmd.Parameters.AddWithValue("@studentID", bookReserveDetails.studentID);
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