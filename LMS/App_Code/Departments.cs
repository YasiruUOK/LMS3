using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class Departments
    {
        public int departmentID { get; set; }
        public string departmentName { get; set; }

        string db_connection_string = ConfigurationManager.ConnectionStrings["db_connectionString"].ConnectionString;

        public List<Departments> getDepartmentNames()
        {
            List<Departments> list = new List<Departments>();
            string sql = "";
            SqlCommand cmd = new SqlCommand();
            sql = "select * from departmentDetails";
            SqlConnection con = new SqlConnection(db_connection_string);
            cmd.CommandText = sql;
            cmd.Connection = con;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Departments c = new Departments();
                c.departmentID = int.Parse(rdr["departmentID"].ToString());
                c.departmentName = rdr["DepartmentName"].ToString();
                list.Add(c);
            }
            con.Close();
            return list;
        }
    }
}