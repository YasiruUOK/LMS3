using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LMS.App_Code
{
    public class CommonFunctions
    {
        string connection_string = ConfigurationManager.ConnectionStrings["db_connectionstring"].ConnectionString;
        public string getCurrentDate()
        {
            var remoteTimeZone = TimeZoneInfo.FindSystemTimeZoneById("Sri Lanka Standard Time");
            var remoteTime = TimeZoneInfo.ConvertTime(DateTime.Now, remoteTimeZone);
            return remoteTime.ToString("yyyy-MM-dd");
        }
        public string getCurrentDateTime()
        {
            var remoteTimeZone = TimeZoneInfo.FindSystemTimeZoneById("Sri Lanka Standard Time");
            var remoteTime = TimeZoneInfo.ConvertTime(DateTime.Now, remoteTimeZone);
            return remoteTime.ToString("yyyy-MM-dd HH:mm");
        }
        public string getServerDate()
        {
            string dt = "";
            DateTime d;
            SqlConnection con = new SqlConnection(connection_string);
            string sql = "select CONVERT(date,GETDATE()) as currDate";
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
    }
}