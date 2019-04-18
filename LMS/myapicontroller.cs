using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using LMS.App_Code;

namespace LMS
{
    public class myapicontroller : ApiController
    {
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getUserRole(string LoggedUser)
        {
            string userRole = "";
            UserAccess u = new UserAccess();
            userRole = u.getUserRole(LoggedUser);
            string yourJson = JsonConvert.SerializeObject(userRole); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getServerDate()
        {
            ReturnData rd = new ReturnData();
            string dt = "";
            CommonFunctions c = new CommonFunctions();
            dt = c.getServerDate();
            string yourJson = JsonConvert.SerializeObject(dt); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookReturnDate()
        {
            ReturnData rd = new ReturnData();
            string dt = "";
            bookIssuingDetails c = new bookIssuingDetails();
            dt = c.getBookReturnDate();
            string yourJson = JsonConvert.SerializeObject(dt); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getUserName(string LoggedUser)
        {
            string userName = "";
            UserAccess u = new UserAccess();
            userName = u.getUserName(LoggedUser);
            string yourJson = JsonConvert.SerializeObject(userName); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }

        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getSubjectAreas()
        {
            List<SubjectAreas> list = new List<SubjectAreas>();
            SubjectAreas u = new SubjectAreas();
            list = u.getSubjectAreas();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getLastBookID()
        {
            List<BookDetails> list = new List<BookDetails>();
            BookDetails u = new BookDetails();
            list = u.getLastBookID();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }

        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage addBookDetails(BookDetails bookDetails)
        {
            ReturnData rd = new ReturnData();
            rd = bookDetails.addBookDetails();
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }
        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage updateBookDetails(BookDetails bookDetails)
        {
            ReturnData rd = new ReturnData();
            rd = bookDetails.updateBookDetails();
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }

        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookNames()
        {
            List<BookDetails> list = new List<BookDetails>();
            BookDetails u = new BookDetails();
            list = u.getBookNames();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookDetailsFromBookID(string bookID)
        {
            List<BookDetails> list = new List<BookDetails>();
            BookDetails u = new BookDetails();
            list = u.getBookDetailsFromBookID(bookID);
            string yourJson = JsonConvert.SerializeObject(list);
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookDetails(string bookTitle)
        {
            List<BookDetails> list = new List<BookDetails>();
            BookDetails u = new BookDetails();
            list = u.getBookDetails(bookTitle);
            string yourJson = JsonConvert.SerializeObject(list); 
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage addStudentDetails(studentDetails studentDetails)
        {
            ReturnData rd = new ReturnData();
            rd = studentDetails.addStudentDetails();
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }

        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage validateStudentID(string studentID)
        {
            ReturnData rd = new ReturnData();
            studentDetails c = new studentDetails();
            rd = c.validateStudentID(studentID);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }

        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage validateBookID(string bookID)
        {
            ReturnData rd = new ReturnData();
            BookDetails b = new BookDetails();
            rd = b.validateBookID(bookID);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }

        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getStudentDetails()
        {
            List<studentDetails> list = new List<studentDetails>();
            studentDetails c = new studentDetails();
            list = c.getStudentDetails();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }

        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookCodeDetailsFromBookID(string bookID)
        {
            List<BookCodeDetails> list = new List<BookCodeDetails>();
            BookCodeDetails u = new BookCodeDetails();
            list = u.getBookCodeDetailsFromBookID(bookID);
            string yourJson = JsonConvert.SerializeObject(list);
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage issueBook(bookIssuingDetails bookIssuingDetails)
        {
            ReturnData rd = new ReturnData();
            rd = bookIssuingDetails.addBookIssuingDetails();
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getTransactionDetails(string studentID)
        {
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookIssuingDetails u = new bookIssuingDetails();
            list = u.getTransactionDetails(studentID);
            string yourJson = JsonConvert.SerializeObject(list);
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage releaseTheBook(bookIssuingDetailsHistory detailsHistory)
        {
            ReturnData rd = new ReturnData();
            bookIssuingDetailsHistory bookIssuingDetailsHistory = new bookIssuingDetailsHistory();
            rd = bookIssuingDetailsHistory.releaseTheBook(detailsHistory);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }
        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage extendTheBook(bookIssuingDetails bookIssuing)
        {
            ReturnData rd = new ReturnData();
            bookIssuingDetails bookIssuingDetails = new bookIssuingDetails();
            rd = bookIssuingDetails.extendTheBook(bookIssuing);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage loadCoursetNames()
        {
            List<Courses> list = new List<Courses>();
            Courses u = new Courses();
            list = u.getCoursetNames();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getUserID(string LoggedUser)
        {
            string userName = "";
            UserAccess u = new UserAccess();
            userName = u.getUserID(LoggedUser);
            string yourJson = JsonConvert.SerializeObject(userName); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage changePassword(string userID, string new_pass)
        {
            ReturnData rd = new ReturnData();
            UserAccess u = new UserAccess();
            rd = u.changePassword(userID, new_pass);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage updateBookDueDate(string studentID)
        {
            ReturnData rd = new ReturnData();
            bookIssuingDetails u = new bookIssuingDetails();
            rd = u.updateBookDueDate(studentID);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage updateBookCodeDetailsFromBookID(string bookCode)
        {
            ReturnData rd = new ReturnData();
            BookCodeDetails u = new BookCodeDetails();
            rd = u.changeActivation(bookCode);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getStudentDetailsinlineFormUserID(string inlineFormUserID, string inlineFormUserName, string inlineFormEmailAddress, string inlineFormPhone)
        {
            List<studentDetails> list = new List<studentDetails>();
            studentDetails c = new studentDetails();
            list = c.getStudentDetailsinlineFormUserID(inlineFormUserID, inlineFormUserName, inlineFormEmailAddress, inlineFormPhone);
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookName(string book_no)
        {
            List<BookDetails> list = new List<BookDetails>();
            BookCodeDetails c = new BookCodeDetails();
            list = c.getBookName(book_no);
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getStudentDetails(string user_id)
        {
            List<studentDetails> list = new List<studentDetails>();
            studentDetails u = new studentDetails();
            list = u.getStudentDetails(user_id);
            string yourJson = JsonConvert.SerializeObject(list);
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookCode()
        {
            List<BookCodeDetails> list = new List<BookCodeDetails>();
            BookCodeDetails c = new BookCodeDetails();
            list = c.getBookCode();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage validateIssueingBook(bookIssuingDetails bookIssuingDetails)
        {
            ReturnData rd = new ReturnData();
            rd = bookIssuingDetails.validateIssueingBook(bookIssuingDetails);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;
        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookIssuedDetails()
        {
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookIssuingDetails c = new bookIssuingDetails();
            list = c.getBookIssuedDetails();
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookIssuedDetailsFromStudentID(string student_ID)
        {
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookIssuingDetails c = new bookIssuingDetails();
            list = c.getBookIssuedDetailsFromStudentID(student_ID);
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getDelayBooks(string studentID)
        {
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookIssuingDetails c = new bookIssuingDetails();
            list = c.getDelayBooks(studentID);
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage makePayments(string studentID,double totalFineAmount,string reason)
        {
            ReturnData rd = new ReturnData();
            paymentDetails c = new paymentDetails();
            rd = c.makePayments(studentID,totalFineAmount,reason);
            string yourJson = JsonConvert.SerializeObject(rd); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookIssuedDetailsFromstudent_name(string student_name)
        {
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookIssuingDetails c = new bookIssuingDetails();
            list = c.getBookIssuedDetailsFromstudent_name(student_name);
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
        [BasicAuthentication]
        [HttpGet]
        public HttpResponseMessage getBookIssuedDetailsFromBookID(string bookID)
        {
            List<bookIssuingDetails> list = new List<bookIssuingDetails>();
            bookIssuingDetails c = new bookIssuingDetails();
            list = c.getBookIssuedDetailsFromBookID(bookID);
            string yourJson = JsonConvert.SerializeObject(list); ;
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(yourJson, Encoding.UTF8, "application/json");
            return response;

        }
    }
}