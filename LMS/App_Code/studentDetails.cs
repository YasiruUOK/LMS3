using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class studentDetails
    {
        public string studentID { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string email { get; set; }
        public string course_name { get; set; }
        public string year_name { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string zip { get; set; }
        public string role { get; set; }
        public string note_on_user { get; set; }
        public string mebershipEndingDate { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        internal ReturnData addStudentDetails()
        {
            ReturnData rd = new ReturnData();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

            sql = "insert into studentDetails (studentID,first_name,last_name,email,course_name,year_name,phone,address,city,state,zip,role,note_on_user) values (@studentID,@first_name,@last_name,@email,@course_name,@year_name,@phone,@address,@city,@state,@zip,@role,@note_on_user) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentID", this.studentID);
            cmd.Parameters.AddWithValue("@first_name", this.first_name);
            cmd.Parameters.AddWithValue("@last_name", this.last_name);
            cmd.Parameters.AddWithValue("@email", this.email);
            cmd.Parameters.AddWithValue("@course_name", this.course_name);
            cmd.Parameters.AddWithValue("@year_name", this.year_name);
            cmd.Parameters.AddWithValue("@phone", this.phone);
            cmd.Parameters.AddWithValue("@address", this.address); 
            cmd.Parameters.AddWithValue("@city", this.city);
            cmd.Parameters.AddWithValue("@state", this.state);
            cmd.Parameters.AddWithValue("@zip", this.zip);
            cmd.Parameters.AddWithValue("@role", this.role);
            cmd.Parameters.AddWithValue("@note_on_user", this.note_on_user);
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

            return rd;
        }

        internal ReturnData validateStudentID(string studentID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from studentDetails where studentID=@studentID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ReturnData rd = new ReturnData();
            if (rdr.HasRows)
            {
                rd.status = 1;
                rd.message = "Ok";
            }
            else
            {
                rd.message = "Student Not found for this ID!";
                rd.status = 0;
            }
            con.Close();
            return rd;
        }

        internal List<studentDetails> getStudentDetails()
        {
            SqlCommand cmd = new SqlCommand();

            List<studentDetails> list = new List<studentDetails>();

            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from studentDetails";
            cmd.CommandText = sql;
            cmd.Connection = con;

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                studentDetails s = new studentDetails();
                s.studentID = Convert.ToString(rdr["studentID"]); 
                s.first_name= Convert.ToString(rdr["first_name"]);
                s.last_name = Convert.ToString(rdr["last_name"]);
                s.email = Convert.ToString(rdr["email"]);
                s.address = Convert.ToString(rdr["address"]);
                s.course_name = Convert.ToString(rdr["course_name"]);
                s.year_name = Convert.ToString(rdr["year_name"]);
                s.phone = Convert.ToString(rdr["phone"]);
                s.city = Convert.ToString(rdr["city"]);
                s.state = Convert.ToString(rdr["state"]);
                s.zip = Convert.ToString(rdr["zip"]);
                s.role = Convert.ToString(rdr["role"]);
                s.note_on_user = Convert.ToString(rdr["note_on_user"]);
                list.Add(s);
            }
            con.Close();

            return list;
        }

        internal List<studentDetails> getStudentDetailsinlineFormUserID(string inlineFormUserID,string inlineFormUserName, string inlineFormEmailAddress, string inlineFormPhone)
        {
            SqlCommand cmd = new SqlCommand();

            List<studentDetails> list = new List<studentDetails>();
            inlineFormUserID = "%" + inlineFormUserID + "%";
            inlineFormUserName = "%" + inlineFormUserName + "%";
            inlineFormEmailAddress = "%" + inlineFormEmailAddress + "%";
            inlineFormPhone = "%" + inlineFormPhone + "%";
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from studentDetails where studentID Like @inlineFormUserID and (first_name Like @inlineFormUserName or last_name Like @inlineFormUserName) and email Like @inlineFormEmailAddress and phone Like @inlineFormPhone";
            
            cmd.Parameters.AddWithValue("@inlineFormUserID", inlineFormUserID);
            cmd.Parameters.AddWithValue("@inlineFormUserName", inlineFormUserName);
            cmd.Parameters.AddWithValue("@inlineFormEmailAddress", inlineFormEmailAddress);
            cmd.Parameters.AddWithValue("@inlineFormPhone", inlineFormPhone);
            cmd.CommandText = sql;
            cmd.Connection = con;

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                studentDetails s = new studentDetails();
                s.studentID = Convert.ToString(rdr["studentID"]);
                s.first_name = Convert.ToString(rdr["first_name"]);
                s.last_name = Convert.ToString(rdr["last_name"]);
                s.email = Convert.ToString(rdr["email"]);
                s.address = Convert.ToString(rdr["address"]);
                s.course_name = Convert.ToString(rdr["course_name"]);
                s.year_name = Convert.ToString(rdr["year_name"]);
                s.phone = Convert.ToString(rdr["phone"]);
                s.city = Convert.ToString(rdr["city"]);
                s.state = Convert.ToString(rdr["state"]);
                s.zip = Convert.ToString(rdr["zip"]);
                s.role = Convert.ToString(rdr["role"]);
                s.note_on_user = Convert.ToString(rdr["note_on_user"]);
                list.Add(s);
            }
            con.Close();

            return list;
        }
        internal List<studentDetails> getStudentDetails(string studentID)
        {
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "select * from studentDetails where studentID=@studentID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@studentID", studentID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            List<studentDetails> list = new List<studentDetails>();
            while (rdr.Read())
            {
                studentDetails s = new studentDetails();
                s.first_name = Convert.ToString(rdr["first_name"]);
                s.last_name = Convert.ToString(rdr["last_name"]);
                s.email = Convert.ToString(rdr["email"]);
                s.address = Convert.ToString(rdr["address"]);
                s.course_name = Convert.ToString(rdr["course_name"]);
                s.year_name = Convert.ToString(rdr["year_name"]);
                s.phone = Convert.ToString(rdr["phone"]);
                s.city = Convert.ToString(rdr["city"]);
                s.state = Convert.ToString(rdr["state"]);
                s.zip = Convert.ToString(rdr["zip"]);
                s.role = Convert.ToString(rdr["role"]);
                s.note_on_user = Convert.ToString(rdr["note_on_user"]);
                list.Add(s);
            }
            con.Close();

            return list;
        }
    }
}