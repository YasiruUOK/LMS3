using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class bookIssuingDetails
    {
        public string bookID { get; set; }
        public string bookCode { get; set; }
        public string bookTitle { get; set; }
        public string studentID { get; set; }
        public DateTime issueDate { get; set; }
        public DateTime returnDate { get; set; }
        public string returnDateString { get; set; }
        public string issueDateString { get; set; }
        public double fineAmount { get; set; }
        public double dateCount { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public ReturnData addBookIssuingDetails()
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "insert into bookIssuingDetails (bookCode,studentID,issueDate,returnDate) values (@bookID,@studentID,@issueDate,@returnDate) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", this.bookID);
            cmd.Parameters.AddWithValue("@studentID", this.studentID);
            cmd.Parameters.AddWithValue("@issueDate", this.issueDate);
            cmd.Parameters.AddWithValue("@returnDate", this.returnDate);

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
                BookCodeDetails bookCodeDetails = new BookCodeDetails();
                bookCodeDetails.updateBorrowedStatus(bookID);
                // rd.para1 = temp_invoice_id;
            }

            return rd;

        }

        internal void deleteFromBookIssungDetails(string bookID, string studentID)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "Delete from bookIssuingDetails where bookCode=@bookID and studentID=@studentID";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            cmd.Parameters.AddWithValue("@studentID", studentID);

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
                new BookCodeDetails().updateBookCodeDetails(bookID);
                // rd.para1 = temp_invoice_id;
            }
        }

        internal List<bookIssuingDetails> getTransactionDetails(string studentID)
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD where BD.bookID=BID.bookID and BID.studentID=@studentID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookID= rdr["bookID"].ToString();
                c.bookTitle=rdr["bookTitle"].ToString();
                c.returnDate=DateTime.Parse(rdr["returnDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString= String.Format("{0:yyyy - MM - dd}", c.returnDate);
                list.Add(c);
            }
            con.Close();
            return list;
        }
        public string getBookReturnDate()
        {
            string dt = "";
            DateTime d;
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select CONVERT(date,GETDATE()+14) as currDate";
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
        internal double getfineAmount(string studentID,DateTime returnDate)
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from systemData";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            double fine = 0;
            while (rdr.Read())
            {
                fine= Convert.ToDouble(rdr["fineAmountPerDay"]);
                CommonFunctions c = new CommonFunctions();
                dateCount= (DateTime.Parse(c.getServerDate())-returnDate).TotalDays;
                fine = fine * dateCount;
                if (fine < 0)
                {
                    fine = 0;
                }
            }
            con.Close();
            return fine;
        }

        internal ReturnData validateIssueingBook(bookIssuingDetails bookIssuingDetails)
        {
            ReturnData rd = new ReturnData();
            ReturnData isStudent = new studentDetails().validateStudentID(bookIssuingDetails.studentID);
            if (isStudent.status == 1)
            {
                ReturnData isStudentEligibleToBorrowBook = studentBookRecodeCount(bookIssuingDetails.studentID);
                if (isStudentEligibleToBorrowBook.status == 1)
                {
                    ReturnData isBookAlreadyBorrowed=new BookCodeDetails().isBookAlreadyBorrowed(bookIssuingDetails.bookID);
                    if (isBookAlreadyBorrowed.status == 1)
                    {
                        addBookIssuingDetails();
                    }
                    else
                    {
                        rd.message = "Check the BookCode.";
                    }
                        
                }
                else
                {
                    rd.message = "Student Has borrowed 2 Books";
                }

            }
            else
            {
                rd.message = "Student ID is not Valid";
            }
            return rd;
        }

        private ReturnData studentBookRecodeCount(string studentID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select count(*) as BookCount from bookIssuingDetails where studentID=@studentID";
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
                if (bookCount<2)
            {
                rd.status = 1;
            }
            else
            {
                rd.message = "Student Has alredy Borrowed 2 Books!";
                rd.status = 0;
            }
            con.Close();
            return rd;
        }

        internal List<bookIssuingDetails> getBookIssuedDetails()
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID=BCD.bookID and BCD.bookCode=BID.bookCode and BID.studentID=SD.studentID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal ReturnData extendTheBook(bookIssuingDetails bookIssuing)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";
            sql = "update bookIssuingDetails set returnDate=@returnDate where bookCode=@bookID";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookIssuing.bookID);
            cmd.Parameters.AddWithValue("@returnDate", getBookReturnDate());

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
                BookCodeDetails bookCodeDetails = new BookCodeDetails();
                bookCodeDetails.updateBorrowedStatus(bookID);
                // rd.para1 = temp_invoice_id;
            }

            return rd;
        }

        internal List<bookIssuingDetails> getBookIssuedDetailsFromStudentID(string student_ID)
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            student_ID = "%" + student_ID + "%";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID=BCD.bookID and BCD.bookCode=BID.bookCode and BID.studentID=SD.studentID and SD.studentID Like @student_ID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@student_ID", student_ID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal ReturnData updateBookDueDate(string studentID)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "Update bookIssuingDetails set returnDate=@returnDate where studentID=@studentID and returnDate<@backTo14Days";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            CommonFunctions cf = new CommonFunctions();
            cmd.Parameters.AddWithValue("@returnDate", cf.getServerDate());
            cmd.Parameters.AddWithValue("@backTo14Days", getbackTo14Days());

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
                new BookCodeDetails().updateBookCodeDetails(bookID);
                // rd.para1 = temp_invoice_id;
            }
            return rd;
        }
        public string getbackTo14Days()
        {
            string dt = "";
            DateTime d;
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select CONVERT(date,GETDATE()-14) as currDate";
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
        internal List<bookIssuingDetails> getBookIssuedDetailsFromstudent_name(string student_name)
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            student_name = "%" + student_name + "%";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID=BCD.bookID and BCD.bookCode=BID.bookCode and BID.studentID=SD.studentID and (SD.first_name Like @student_name or SD.last_name Like @student_name)";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@student_name", student_name);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal List<bookIssuingDetails> getBookIssuedDetailsFromBookID(string bookID)
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookID = "%" + bookID + "%";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID=BCD.bookID and BCD.bookCode=BID.bookCode and BID.studentID=SD.studentID and BCD.bookCode Like @bookID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal List<bookIssuingDetails> getDelayBooks(string studentID)
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID = BCD.bookID and BCD.bookCode = BID.bookCode and BID.studentID = SD.studentID and SD.studentID = @student_ID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@student_ID", studentID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                if (c.fineAmount > 0)
                {
                    list.Add(c);
                }
                
            }
            con.Close();
            return list;
        }
        internal List<bookIssuingDetails> getDelayBooks()
        {
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookIssuingDetails BID,bookDetails BD, studentDetails SD, bookCodeDetails BCD where BD.bookID = BCD.bookID and BCD.bookCode = BID.bookCode and BID.studentID = SD.studentID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookIssuingDetails c = new bookIssuingDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.studentID = rdr["studentID"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.returnDate = DateTime.Parse(rdr["returnDate"].ToString());
                c.issueDate = DateTime.Parse(rdr["issueDate"].ToString());
                c.fineAmount = getfineAmount(studentID, c.returnDate);
                c.returnDateString = String.Format("{0:yyyy - MM - dd}", c.returnDate);
                c.issueDateString = String.Format("{0:yyyy - MM - dd}", c.issueDate);
                if (c.fineAmount > 0)
                {
                    list.Add(c);
                }

            }
            con.Close();
            return list;
        }

    }
}