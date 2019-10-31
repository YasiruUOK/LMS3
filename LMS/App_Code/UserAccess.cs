using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using EASendMail;
using LMS.App_Code;

namespace LMS.App_Code
{
    public class UserAccess
    {

        public int recordref { get; set; }
        public string user_id { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string email { get; set; }
        public string mobile_phone { get; set; }
        public string password { get; set; }
        public string user_role { get; set; }
        public string password_trycount { get; set; }
        public string status { get; set; }
        public string last_accessed { get; set; }
        public string code { get; set; }
        public string confirmPassword { get; set; }

        string user_db_connection_string = ConfigurationManager.ConnectionStrings["user_db_connectionString"].ConnectionString;

        public ReturnData login()
        {
            ReturnData rd = new ReturnData();

            if (this.user_id == null || this.password == null || this.user_id == "" || this.password == "")
            {
                rd.status = 0;
                rd.message = "Not a valid username of password";
                return rd;
            }


            string sql = "select * from user_profile where user_id=@para_user_id and password=@para_password and status = 'Active' ";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@para_user_id", this.user_id);
            cmd.Parameters.AddWithValue("@para_password", this.password);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                rdr.Read();
                rd.status = 1;
                rd.message = "OK";
                rd.para1 = get_token(rdr["user_id"].ToString());

            }
            else
            {
                rd.status = 0;
                rd.message = "Not a valid username of password";
            }
            con.Close();

            return rd;
        }

        internal ReturnData changeForgetPassword()
        {
            ReturnData rd = new ReturnData();
            rd.status = validateCode(this.code, this.email);
            if (rd.status > 0)
            {
                SqlConnection con = new SqlConnection(user_db_connection_string);
                string sql = "update user_profile set password=@password where email=@email";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@password", this.password);
                cmd.Parameters.AddWithValue("@email", this.email);
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
                    deleteCode(this.email);
                    rd.status = 1;
                    rd.message = "updated";
                    // rd.para1 = temp_invoice_id;
                }
            }
            else
            {
                rd.status = 0;
                rd.message = "This code is not valid for given email";
            }
            return rd;
        }

        private void deleteCode(string email)
        {
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "delete from forgetPassword where email=@email";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@email", email);
            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
            }
            con.Close();
        }

        private int validateCode(string code, string email)
        {
            int retutn_val = 0;
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select * from forgetPassword where code=@code and email=@email";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@code", code);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                retutn_val = 1;
            }
            con.Close();
            return retutn_val;
        }

        internal ReturnData forgetPassword()
        {
            ReturnData rd = new ReturnData();

            if (this.user_id == null || this.user_id == "" )
            {
                rd.status = 0;
                rd.message = "Not a valid username of password";
                return rd;
            }


            string sql = "select * from user_profile where user_id=@para_user_id and status = 'Active' ";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@para_user_id", this.user_id);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                /*rdr.Read();
                rd.status = 1;
                rd.message = "OK";
                rd.para1 = get_token(rdr["user_id"].ToString());*/
                email = rdr["email"].ToString();
                sendRandomNumber(email);
                rd.status = 0;
                rd.message = "Check your email";
                return rd;
            }
            if (!rdr.HasRows)
            {
                rd.status = 0;
                rd.message = "Not a valid username";
                return rd;
            }
            con.Close();

            return rd;
        }

        private void sendRandomNumber(string email)
        {
            Random random = new Random();
            int num = random.Next(10000);
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "";

            sql = "insert into forgetPassword (code,email) values (@code,@email) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@code", num);
            cmd.Parameters.AddWithValue("@email", email);
            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
            }
            con.Close();

            if (count > 0)
            {
                try
                {
                    SmtpMail oMail = new SmtpMail("TryIt");

                    // Your gmail email address
                    oMail.From = "abc@gmail.com";

                    // Set recipient email address
                    oMail.To = email;

                    // Set email subject
                    oMail.Subject = "Forget Password Code";

                    // Set email body
                    oMail.TextBody = "Your code is "+num;

                    // Gmail SMTP server address
                    SmtpServer oServer = new SmtpServer("smtp.gmail.com");

                    // Gmail user authentication
                    // For example: your email is "gmailid@gmail.com", then the user should be the same
                    oServer.User = "abc@gmail.com";
                    oServer.Password = "123456";

                    // If you want to use direct SSL 465 port,
                    // please add this line, otherwise TLS will be used.
                    // oServer.Port = 465;

                    // set 587 TLS port;
                    oServer.Port = 587;

                    // detect SSL/TLS automatically
                    oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

                    Console.WriteLine("start to send email over SSL ...");

                    EASendMail.SmtpClient oSmtp = new EASendMail.SmtpClient();
                    oSmtp.SendMail(oServer, oMail);

                    Console.WriteLine("email was sent successfully!");
                }
                catch (Exception ep)
                {
                    Console.WriteLine("failed to send email with the following error:");
                    Console.WriteLine(ep.Message);
                }
            }
        }

        protected string get_token(string para_user_id)
        {
            //generate a token
            Guid id = Guid.NewGuid();
            string token = id.ToString();

            var request = HttpContext.Current.Request;
            string ip = request.ServerVariables["REMOTE_ADDR"];

            if (ip == null) { ip = "Not Available"; }

            SqlConnection con = new SqlConnection(user_db_connection_string);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            CommonFunctions cf = new CommonFunctions();

            //TWO QUERIES
            cmd.CommandText = "delete from  token where user_id=@user_id; insert into TOKEN (user_id,token, ip, center_id, login_time) values(@user_id,@token, @ip, @center_id, @current_date_time)";
            cmd.Parameters.AddWithValue("@user_id", para_user_id);
            cmd.Parameters.AddWithValue("@token", token);
            cmd.Parameters.AddWithValue("@ip", ip);
            cmd.Parameters.AddWithValue("@center_id", "0");
            cmd.Parameters.AddWithValue("@current_date_time", cf.getCurrentDateTime());
            con.Open();
            int count = (int)cmd.ExecuteNonQuery();
            con.Close();

            return token;

        }

        internal string getUserFullName(string token)
        {
            string retutn_val = "";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select first_name, last_name from Token,user_profile where Token.user_id=user_profile.user_id and token=@token";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@token", token);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                retutn_val = rdr["first_name"].ToString()+" "+ rdr["last_name"].ToString();
            }
            con.Close();
            return retutn_val;
        }

        internal void createUser(string studentID, string first_name, string last_name, string email, string phone, string student)
        {
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "";

            sql = "insert into user_profile (user_id,first_name,last_name,email,mobile_phone,password,user_role,status) values (@user_id,@first_name,@last_name,@email,@mobile_phone,@password,@user_role,@status) ";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@user_id", studentID);
            cmd.Parameters.AddWithValue("@first_name", first_name);
            cmd.Parameters.AddWithValue("@last_name", last_name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobile_phone", phone);
            cmd.Parameters.AddWithValue("@password", studentID);
            cmd.Parameters.AddWithValue("@user_role", student);
            cmd.Parameters.AddWithValue("@status", "Active");
            int count = 0;
            con.Open();
            try
            {
                count = (int)cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
            }
            con.Close();

            if (count > 0)
            {
                
            }
            
        }

        public bool validateToken(string token)
        {
            bool return_value = false;

            SqlConnection con = new SqlConnection(user_db_connection_string);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from token where token=@token";
            cmd.Parameters.AddWithValue("@token", token);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                rdr.Read();

                CommonFunctions cf = new CommonFunctions();

                DateTime current_time = Convert.ToDateTime(cf.getCurrentDateTime());
                DateTime token_time = Convert.ToDateTime(rdr["login_time"]);

                var duration = (int)(current_time - token_time).TotalMinutes;
                if (duration > 360)
                {
                    return_value = false;
                }
                else
                {
                    return_value = true;
                }
            }

            con.Close();
            return return_value;

        }
        public string getLoggedUser(string token)
        {
            string retutn_val = "";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select user_id from Token where token=@token";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@token", token);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                retutn_val = rdr["user_id"].ToString();
            }
            con.Close();
            return retutn_val;
        }
        public string getUserRole(string token)
        {
            string userRole = "";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select user_profile.user_role as userRole from Token inner join user_profile on Token.user_id=user_profile.user_id where Token.token=@token";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@token", token);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                userRole = rdr["userRole"].ToString();
            }
            con.Close();
            return userRole;
        }
        public string getUserName(string token)
        {
            string retutn_val = "";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select first_name from Token,user_profile where Token.user_id=user_profile.user_id and token=@token";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@token", token);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                retutn_val = rdr["first_name"].ToString();
            }
            con.Close();
            return retutn_val;
        }
        public string getUserID(string token)
        {
            string retutn_val = "";
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select user_profile.user_id as user_id from Token,user_profile where Token.user_id=user_profile.user_id and token=@token";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@token", token);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                retutn_val = rdr["user_id"].ToString();
            }
            con.Close();
            return retutn_val;
        }

        internal ReturnData changePassword(string userID, string new_pass)
        {
            ReturnData rd = new ReturnData();
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "update user_profile set password=@password where user_id=@user_id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@password", new_pass);
            cmd.Parameters.AddWithValue("@user_id", userID);
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

        internal string userCount()
        {
            string userCount = "";
            DateTime d;
            SqlConnection con = new SqlConnection(user_db_connection_string);
            string sql = "select count(*) as userCount from user_profile";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                userCount = rdr["userCount"].ToString();
            }
            con.Close();
            return userCount;
        }
    }
}