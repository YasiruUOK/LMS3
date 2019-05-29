using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class BookDetails
    {
        public int bookID { get; set; }
        public string isbnCode { get; set; }
        public string author { get; set; }
        public string bookTitle { get; set; }
        public string bookCategory { get; set; }
        public string publisher { get; set; }
        public string bookURL { get; set; }
        public string bookImage { get; set; }
        public string bookPDF { get; set; }
        public string imageofBook { get; set; }
        public string bookExternalURL { get; set; }
        public string price { get; set; }
        public string qty { get; set; }
        public int borrowedBookCount { get; set; }
        public string bookDescription { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public List<BookDetails> getLastBookID()
        {
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select isnull(max(bookID)+1,1) as maxbookID from bookDetails";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.bookID = int.Parse(rdr["maxbookID"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }
        

        public ReturnData addBookDetails()
        {

            ReturnData rd = new ReturnData();
            string isBookAvailabe = getBookIDFromISBNCode(isbnCode);
            if (isBookAvailabe == "")
            {
                SqlConnection con = new SqlConnection(db_connection_string);
                string sql = "";

                sql = "insert into bookDetails (isbnCode,author,bookTitle,bookCategory,publisher,bookURL,bookImage,bookPDF,bookExternalURL,price,qty,bookDescription) values (@isbnCode,@author,@bookTitle,@bookCategory,@publisher,@bookURL,@bookImage,@bookPDF,@bookExternalURL,@price,@qty,@bookDescription) ";

                SqlCommand cmd = new SqlCommand(sql, con);
                //byte[] imageData = File.ReadAllBytes(this.imageofBook);
                cmd.Parameters.AddWithValue("@bookTitle", this.bookTitle);
                cmd.Parameters.AddWithValue("@isbnCode", this.isbnCode);
                cmd.Parameters.AddWithValue("@bookCategory", this.bookCategory);
                cmd.Parameters.AddWithValue("@author", this.author);
                cmd.Parameters.AddWithValue("@publisher", this.publisher);
                cmd.Parameters.AddWithValue("@price", this.price);
                cmd.Parameters.AddWithValue("@bookURL", this.bookURL);
                cmd.Parameters.AddWithValue("@bookImage", this.bookImage);
                cmd.Parameters.AddWithValue("@bookPDF", this.bookPDF);
                cmd.Parameters.AddWithValue("@bookExternalURL", this.bookExternalURL);
                cmd.Parameters.AddWithValue("@qty", this.qty);
                cmd.Parameters.AddWithValue("@bookDescription", this.bookDescription);

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
                    string bookID = getBookIDFromISBNCode(isbnCode);
                    string bookCode = this.bookCategory.Substring(0, 4);
                    int bookQty = int.Parse(this.qty);
                    BookCodeDetails bookCodeDetails = new BookCodeDetails();
                    bookCodeDetails.addBookCode(bookID, bookCode, bookQty);
                    rd.status = 1;
                    rd.message = "OK";
                    // rd.para1 = temp_invoice_id;
                }
            }
            else
            {
                string bookID = getBookIDFromISBNCode(isbnCode);
                string bookCode = this.bookCategory.Substring(0, 4);
                int bookQty = int.Parse(this.qty);
                BookCodeDetails bookCodeDetails = new BookCodeDetails();
                bookCodeDetails.addBookCode(bookID, bookCode, bookQty);
                rd.status = 1;
                rd.message = "OK";
            }
            return rd;

        }

        internal ReturnData updateBookDetails()
        {
            ReturnData rd = new ReturnData();
                SqlConnection con = new SqlConnection(db_connection_string);
                string sql = "";

                sql = "update bookDetails set isbnCode=@isbnCode, author=@author,bookTitle=@bookTitle,bookCategory=@bookCategory,publisher=@publisher,bookURL=@bookURL,bookImage=@bookImage,bookPDF=@bookPDF,bookExternalURL=@bookExternalURL,price=@price,qty=@qty,bookDescription=@bookDescription where bookID=@bookID";

                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@bookID", this.bookID);
                cmd.Parameters.AddWithValue("@bookTitle", this.bookTitle);
                cmd.Parameters.AddWithValue("@isbnCode", this.isbnCode);
                cmd.Parameters.AddWithValue("@bookCategory", this.bookCategory);
                cmd.Parameters.AddWithValue("@author", this.author);
                cmd.Parameters.AddWithValue("@publisher", this.publisher);
                cmd.Parameters.AddWithValue("@price", this.price);
                cmd.Parameters.AddWithValue("@bookURL", this.bookURL);
                cmd.Parameters.AddWithValue("@bookImage", this.bookImage);
                cmd.Parameters.AddWithValue("@bookPDF", this.bookPDF);
                cmd.Parameters.AddWithValue("@bookExternalURL", this.bookExternalURL);
                cmd.Parameters.AddWithValue("@qty", this.qty);
                cmd.Parameters.AddWithValue("@bookDescription", this.bookDescription);

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
                    //string bookID = getBookIDFromISBNCode(isbnCode);
                    //string bookCode = this.bookCategory.Substring(0, 4);
                    //int bookQty = int.Parse(this.qty);
                    //BookCodeDetails bookCodeDetails = new BookCodeDetails();
                    //bookCodeDetails.addBookCode(bookID, bookCode, bookQty);
                    rd.status = 1;
                    rd.message = "OK";
                    // rd.para1 = temp_invoice_id;
                }
            
            return rd;
        }

        private string getBookIDFromISBNCode(string isbnCode)
        {
            string bookID = "";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select bookID from bookDetails where isbnCode=@isbnCode";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@isbnCode", isbnCode);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookID = rdr["bookID"].ToString();
            }
            con.Close();
            return bookID;
        }

        internal List<BookDetails> getBookDetails()
        {
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookDetails";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.bookID = int.Parse(rdr["bookID"].ToString());
                c.bookTitle = rdr["bookTitle"].ToString();
                c.isbnCode = rdr["isbnCode"].ToString();
                c.author = rdr["author"].ToString();
                c.bookCategory = rdr["bookCategory"].ToString();
                c.publisher = rdr["publisher"].ToString();
                c.price = rdr["price"].ToString();
                c.qty = rdr["qty"].ToString();
                c.bookDescription = rdr["bookDescription"].ToString();
                c.borrowedBookCount = new BookCodeDetails().getBorrowedBookCount(rdr["bookID"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal List<BookDetails> getDetailsFromISBN(string iSBN)
        {
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            iSBN = "%" + iSBN + "%";
            sql = "select * from bookDetails where isbnCode Like @isbnCode";
            cmd.Parameters.AddWithValue("@isbnCode", iSBN);
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.bookID = int.Parse(rdr["bookID"].ToString());
                c.bookTitle = rdr["bookTitle"].ToString();
                c.isbnCode = rdr["isbnCode"].ToString();
                c.author = rdr["author"].ToString();
                c.bookCategory = rdr["bookCategory"].ToString();
                c.publisher = rdr["publisher"].ToString();
                c.price = rdr["price"].ToString();
                c.qty = rdr["qty"].ToString();
                c.bookDescription = rdr["bookDescription"].ToString();
                c.borrowedBookCount = new BookCodeDetails().getBorrowedBookCount(rdr["bookID"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal List<BookDetails> getBookDetailsFromBookName(string bookName)
        {
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            bookName = "%" + bookName + "%";
            sql = "select * from bookDetails where bookTitle Like @bookTitle";
            cmd.Parameters.AddWithValue("@bookTitle", bookName);
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.bookID = int.Parse(rdr["bookID"].ToString());
                c.bookTitle = rdr["bookTitle"].ToString();
                c.isbnCode = rdr["isbnCode"].ToString();
                c.author = rdr["author"].ToString();
                c.bookCategory = rdr["bookCategory"].ToString();
                c.publisher = rdr["publisher"].ToString();
                c.price = rdr["price"].ToString();
                c.qty = rdr["qty"].ToString();
                c.bookDescription = rdr["bookDescription"].ToString();
                c.borrowedBookCount = new BookCodeDetails().getBorrowedBookCount(rdr["bookID"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal List<BookDetails> getBookNames()
        {
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookDetails";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.bookID= int.Parse(rdr["bookID"].ToString());
                c.bookTitle = rdr["bookTitle"].ToString();
                c.isbnCode = rdr["isbnCode"].ToString();
                c.author = rdr["author"].ToString();
                c.bookCategory = rdr["bookCategory"].ToString();
                c.publisher = rdr["publisher"].ToString();
                c.price = rdr["price"].ToString();
                c.qty = rdr["qty"].ToString();
                c.bookDescription = rdr["bookDescription"].ToString();
                c.borrowedBookCount = new BookCodeDetails().getBorrowedBookCount(rdr["bookID"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal List<BookDetails> getBookDetails(string bookTitle)
        {
            BookDetails book = new BookDetails();
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookDetails where bookTitle=@bookTitle";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookTitle", bookTitle);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.isbnCode = rdr["isbnCode"].ToString();
                //c.bookLanguage = rdr["bookLanguage"].ToString();
                c.author= rdr["author"].ToString();
                c.publisher= rdr["publisher"].ToString();
                c.price = rdr["price"].ToString();
                //c.edition= rdr["edition"].ToString();
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal ReturnData validateBookID(string bookID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from bookDetails where bookID=@bookID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ReturnData rd = new ReturnData();
            if (rdr.HasRows)
            {
                rd.status = 1;
            }
            else
            {
                rd.message = "Book Not found for this ID!";
                rd.status = 0;
            }
            con.Close();
            return rd;
        }

        internal List<BookDetails> getBookDetailsFromBookID(string bookID)
        {
            BookDetails book = new BookDetails();
            List<BookDetails> list = new List<BookDetails>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from bookDetails where bookID=@bookID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookDetails c = new BookDetails();
                c.bookTitle = rdr["bookTitle"].ToString();
                c.isbnCode = rdr["isbnCode"].ToString();
               // c.bookLanguage = rdr["bookLanguage"].ToString();
                c.author = rdr["author"].ToString();
                c.publisher = rdr["publisher"].ToString();
                c.price = rdr["price"].ToString();
                //c.edition = rdr["edition"].ToString();
                c.bookCategory = rdr["bookCategory"].ToString();
                c.publisher = rdr["publisher"].ToString();
                c.bookURL = rdr["bookURL"].ToString();
                c.qty = rdr["qty"].ToString();
                c.bookDescription = rdr["bookDescription"].ToString();
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal string bookCount()
        {
            string bookCount = "";
            DateTime d;
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select count(*) as bookCount from bookDetails";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                bookCount = rdr["bookCount"].ToString();
            }
            con.Close();
            return bookCount;
        }
    }
}