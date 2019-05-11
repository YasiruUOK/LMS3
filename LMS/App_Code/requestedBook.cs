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
        public DateTime requestedDate { get; set; }
        public string studentID { get; set; }

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

        private ReturnData addLike(string requestID, string studentID)
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
    }
}