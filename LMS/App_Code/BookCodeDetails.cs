using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class BookCodeDetails
    {
        public string bookID { get; set; }
        public string bookCode { get; set; }
        public string bookName { get; set; }
        public bool Reserverd { get; set; }
        public bool Active { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        internal void addBookCode(string bookID, string bookCode, int bookQty)
        {

            ReturnData rd = new ReturnData();
            int bookCountForThisBookID = getBookCountForThisBookID(bookID);
            for(int i= bookCountForThisBookID;i< (bookQty+ bookCountForThisBookID); i++)
            {
                string PaddedResult = (i+1).ToString().PadLeft(3, '0');
                string newBookCode = bookCode + PaddedResult;

                SqlConnection con = new SqlConnection(db_connection_string);
                string sql = "";

                sql = "insert into bookCodeDetails (bookID,bookCode) values (@bookID,@bookCode) ";

                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@bookID", bookID);
                cmd.Parameters.AddWithValue("@bookCode", newBookCode);
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
                    // rd.para1 = temp_invoice_id;
                }
            }
            
            
        }

        internal void updateBorrowedStatus(string bookID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "update bookCodeDetails set Borrowed='True' where bookCode=@bookID";  
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookID);

            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                //rd.status = 0;
                //rd.message = Ex.Message;
            }
            con.Close();

            if (count > 0)
            {

                //rd.status = 1;
                //rd.message = "OK";
                // rd.para1 = temp_invoice_id;
            }
        }

        private int getBookCountForThisBookID(string bookID)
        {
            int bookCount = 0;
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select count(bookID) as bookCount from bookCodeDetails where bookID=@bookID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookCount = int.Parse(rdr["bookCount"].ToString());
            }
            con.Close();
            return bookCount;
        }

        internal void updateBookCodeDetails(string bookID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "update bookCodeDetails set Borrowed='False' where bookCode=@bookID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookID);

            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                //rd.status = 0;
                //rd.message = Ex.Message;
            }
            con.Close();

            if (count > 0)
            {

                //rd.status = 1;
                //rd.message = "OK";
                // rd.para1 = temp_invoice_id;
            }
        }

        internal List<BookDetails> getBookName(string book_no)
        {
            string bookname = "";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            List<BookDetails> list = new List<BookDetails>();
            sql = "select bookTitle, isbnCode from bookCodeDetails BCD, bookDetails BD where BD.bookID=BCD.bookID and bookCode=@bookCode";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookCode", book_no);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails b = new BookDetails();
                b.bookTitle = rdr["bookTitle"].ToString();
                b.isbnCode = rdr["isbnCode"].ToString();
                list.Add(b);
            }
            con.Close();
            return list;
        }

        internal List<BookCodeDetails> getBookCode()
        {
            SqlCommand cmd = new SqlCommand();

            List<BookCodeDetails> list = new List<BookCodeDetails>();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from bookCodeDetails where Borrowed='False'";
            cmd.CommandText = sql;
            cmd.Connection = con;

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookCodeDetails s = new BookCodeDetails();
                s.bookCode = Convert.ToString(rdr["bookCode"]);
                list.Add(s);
            }
            con.Close();

            return list;
        }

        internal ReturnData isBookAlreadyBorrowed(string bookID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select Borrowed from bookCodeDetails where bookCode=@bookID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ReturnData rd = new ReturnData();
            bool Reserverd = false;
            if (rdr.HasRows)
            {
                rdr.Read();
                Reserverd = bool.Parse(rdr["Borrowed"].ToString());
            }
            if (Reserverd ==false)
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

        internal int getBorrowedBookCount(string bookID)
        {
            int bookCount = 0;
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select count(bookID) as bookCount from bookCodeDetails where bookID=@bookID and Borrowed=1";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookCount = int.Parse(rdr["bookCount"].ToString());
            }
            con.Close();
            return bookCount;
        }

        internal List<BookCodeDetails> getBookCodeDetailsFromBookID(string bookID)
        {
            BookCodeDetails book = new BookCodeDetails();
            List<BookCodeDetails> list = new List<BookCodeDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookCodeDetails where bookID=@bookID and Borrowed=0";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookCodeDetails c = new BookCodeDetails();
                c.bookCode = rdr["bookCode"].ToString();
                c.Active = bool.Parse(rdr["Active"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal ReturnData changeActivation(string bookCode)
        {
            ReturnData rd = new ReturnData();
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "update bookCodeDetails set Active=CASE WHEN Active = 1 THEN  0 ELSE 1 END where bookCode=@bookCode";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookCode", bookCode);
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
                rd.message = "updated";
                // rd.para1 = temp_invoice_id;
            }
            return rd;
        }
    }
}