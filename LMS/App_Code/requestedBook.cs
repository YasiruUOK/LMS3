using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class requestedBook
    {
        public int requestID { get; set; }
        public string bookName { get; set; }
        public string bookURL { get; set; }
        public string BookDesc { get; set; }
        public string requestedDate { get; set; }
        public string studentID { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public int LikeCount { get; set; }
        public bool Approved { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        internal ReturnData addRequestBook()
        {
            ReturnData rd = new ReturnData();
            string isBookAvailabe = getRequestID(this.bookName);
            if (isBookAvailabe == "")
            {
                SqlConnection con = new SqlConnection(db_connection_string);
                string sql = "";

                sql = "insert into requestedBook (bookName,bookURL,BookDesc,requestBy) values (@bookName,@bookURL,@BookDesc,@studentID) ";

                SqlCommand cmd = new SqlCommand(sql, con);
                //byte[] imageData = File.ReadAllBytes(this.imageofBook);
                cmd.Parameters.AddWithValue("@bookName", this.bookName);
                cmd.Parameters.AddWithValue("@bookURL", this.bookURL);
                cmd.Parameters.AddWithValue("@BookDesc", this.BookDesc);
                cmd.Parameters.AddWithValue("@studentID", this.studentID);

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
                    addLike(getRequestID(this.bookName), this.studentID);
                }
            }
            else
            {
                rd.status = 1;
                rd.message = "This book already requested";
            }
            return rd;
        }

        internal ReturnData addLike(string requestID, string studentID)
        {
            ReturnData rd = new ReturnData();
            string isAlreadyLike = getstudentID(requestID,studentID);
            if (isAlreadyLike == "")
            {
                SqlConnection con = new SqlConnection(db_connection_string);
                string sql = "";

                sql = "insert into requestedBookLikeDetails (requestID,studentID) values (@requestID,@studentID) ";

                SqlCommand cmd = new SqlCommand(sql, con);
                //byte[] imageData = File.ReadAllBytes(this.imageofBook);
                cmd.Parameters.AddWithValue("@requestID", requestID);
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
                }
            }
            else
            {
                rd.status = 1;
                rd.message = "Already Liked";
            }
            return rd;
        }

        private string getstudentID(string requestID, string studentID)
        {
            string studentsID = "";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select studentID from requestedBookLikeDetails where studentID=@studentID and requestID=@requestID";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            cmd.Parameters.AddWithValue("@requestID", requestID);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                studentsID = rdr["studentID"].ToString();
            }
            con.Close();
            return studentsID;
        }

        private string getRequestID(string bookName)
        {
            string requestID = "";
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select requestID from requestedBook where bookName=@bookName";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.Parameters.AddWithValue("@bookName", bookName);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                requestID = rdr["requestID"].ToString();
            }
            con.Close();
            return requestID;
        }

        internal List<requestedBook> getRequestedBookDetails()
        {
            requestedBook requestedBookDetails = new requestedBook();
            List<requestedBook> list = new List<requestedBook>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select RB.requestID, RB.bookName, RB.bookURL, RB.BookDesc, SD.first_name, SD.last_name, RB.requestedDate, count(RBD.requestID) As LikeCount, RB.Approved from requestedBook RB, requestedBookLikeDetails RBD, studentDetails SD where RB.requestID=RBD.requestID and SD.studentID=RB.requestBy group by RB.requestID, RB.bookName, RB.bookURL, RB.BookDesc, SD.first_name, SD.last_name, RB.requestedDate, RB.Approved";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                requestedBook c = new requestedBook();
                c.requestID = int.Parse(rdr["requestID"].ToString());
                c.bookName = rdr["bookName"].ToString();
                c.bookURL = rdr["bookURL"].ToString();
                c.BookDesc = rdr["BookDesc"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.requestedDate = String.Format("{0:yyyy - MM - dd}", DateTime.Parse(rdr["requestedDate"].ToString()));
                c.LikeCount = int.Parse(rdr["LikeCount"].ToString());
                c.Approved= bool.Parse(rdr["Approved"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal ReturnData approveRequestBook(string requestID)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";
            sql = "update requestedBook set Approved='True' where requestID=@requestID";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@requestID", requestID);

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

        internal ReturnData disapproveRequestBook(string requestID)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";
            sql = "update requestedBook set Approved='False' where requestID=@requestID";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@requestID", requestID);

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

        internal ReturnData deleteRequestBook(string requestID)
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";
            sql = "Delete from requestedBook where requestID = @requestID";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@requestID", requestID);

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

        internal List<requestedBook> getRequestedBook(string searchBook)
        {
            requestedBook requestedBookDetails = new requestedBook();
            List<requestedBook> list = new List<requestedBook>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select RB.requestID, RB.bookName, RB.bookURL, RB.BookDesc, SD.first_name, SD.last_name, RB.requestedDate, count(RBD.requestID) As LikeCount, RB.Approved from requestedBook RB, requestedBookLikeDetails RBD, studentDetails SD where RB.requestID=RBD.requestID and SD.studentID=RB.requestBy and (RB.bookName Like @searchBook or RB.BookDesc Like @searchBook) group by RB.requestID, RB.bookName, RB.bookURL, RB.BookDesc, SD.first_name, SD.last_name, RB.requestedDate, RB.Approved ";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@searchBook", "%"+searchBook+"%");
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                requestedBook c = new requestedBook();
                c.requestID = int.Parse(rdr["requestID"].ToString());
                c.bookName = rdr["bookName"].ToString();
                c.bookURL = rdr["bookURL"].ToString();
                c.BookDesc = rdr["BookDesc"].ToString();
                c.first_name = rdr["first_name"].ToString();
                c.last_name = rdr["last_name"].ToString();
                c.requestedDate = String.Format("{0:yyyy - MM - dd}", DateTime.Parse(rdr["requestedDate"].ToString()));
                c.LikeCount = int.Parse(rdr["LikeCount"].ToString());
                c.Approved = bool.Parse(rdr["Approved"].ToString());
                list.Add(c);
            }
            con.Close();
            return list;
        }
    }
}