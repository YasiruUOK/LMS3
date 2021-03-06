﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class Courses
    {
        public int courseID { get; set; }
        public string CourseName { get; set; }
        public string departmentID { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public List<Courses> getCoursetNames()
        {
            List<Courses> list = new List<Courses>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from courseDetails";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Courses c = new Courses();
                c.courseID = int.Parse(rdr["courseID"].ToString());
                c.CourseName = rdr["CourseName"].ToString();
                list.Add(c);
            }
            con.Close();
            return list;
        }

        internal  ReturnData addCourse(Courses courses)
        {
            ReturnData rd = new ReturnData();
            SqlConnection con = new SqlConnection(db_connection_string);
            string sql = "";

                sql = "insert into courseDetails (CourseName,departmentID) values (@CourseName,@departmentID) ";

                SqlCommand cmd = new SqlCommand(sql, con);
                //byte[] imageData = File.ReadAllBytes(this.imageofBook);
                cmd.Parameters.AddWithValue("@CourseName", courses.CourseName);
                cmd.Parameters.AddWithValue("@departmentID", courses.departmentID);

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
    }
}