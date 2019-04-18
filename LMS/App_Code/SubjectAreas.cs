using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class SubjectAreas
    {
        public int recordref { get; set; }
        public string subjectAreaName { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public List<SubjectAreas> getSubjectAreas()
        {
            List<SubjectAreas> list = new List<SubjectAreas>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from SubjectArea";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                SubjectAreas c = new SubjectAreas();
                c.subjectAreaName = rdr["subjectAreaName"].ToString();
                list.Add(c);
            }
            con.Close();
            return list;
        }
    }
}