<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage-issued-book-for-users.aspx.cs" Inherits="LMS.manage_issued_book_for_users" %>

<html lang="en-US" ng-app="myApp">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta charset="ISO-8859-15">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="profile" href="http://gmpg.org/xfn/11">
  <link rel="pingback" href="https://www.library-management.com/xmlrpc.php">
  <link href="https://www.library-management.com/wp-content/themes/library/fonts/fonts.css" rel="stylesheet">
  <link href="https://www.library-management.com/wp-content/themes/library/css/ionicons.min.css" rel="stylesheet">
    <title>Manage Issued Book For Users &#8211; LMS a WordPress Theme</title>
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel='stylesheet' id='bootstrap-css'  href='https://www.library-management.com/wp-content/themes/library/css/bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='slick-css'  href='https://www.library-management.com/wp-content/themes/library/css/slick.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='slick_theme-css'  href='https://www.library-management.com/wp-content/themes/library/css/slick-theme.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='button-css'  href='https://www.library-management.com/wp-content/themes/library/css/button.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='adminLTE-css'  href='https://www.library-management.com/wp-content/themes/library/css/AdminLTE.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='skin-css'  href='https://www.library-management.com/wp-content/themes/library/css/_all-skins.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='iziToastCss-css'  href='https://www.library-management.com/wp-content/themes/library/css/iziToast.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='tooltipcss-css'  href='https://www.library-management.com/wp-content/themes/library/css/angular-tooltips.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='datetimepickerCss-css'  href='https://www.library-management.com/wp-content/themes/library/css/jquery.datetimepicker.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='angular_bootstrap_toggle_css-css'  href='https://www.library-management.com/wp-content/themes/library/css/angular-bootstrap-toggle.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='datatable_css-css'  href='https://www.library-management.com/wp-content/themes/library/css/dataTables.bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='mainstyle-css'  href='https://www.library-management.com/wp-content/themes/library/style.css?ver=4.9.8' type='text/css' media='all' />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="Js/cookiefile.js"></script>
<script type='text/javascript' src='https://www.library-management.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/bootstrap.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery-ui.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/slick.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ripple-effect.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.validate.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular-animate.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.numeric.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/iziToast.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular-tooltips.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.datetimepicker.full.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.datetimepicker.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/app.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.slides.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/webcam.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ng-camera.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/canvasjs.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular-bootstrap-toggle.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/bootbox.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.blockUI.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.dataTables.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/dataTables.bootstrap.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/tinymce/tinymce.min.js?ver=4.9.8'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var myAjax = { "ajaxurl": "https:\/\/www.library-management.com\/wp-admin\/admin-ajax.php", "loader_path": "https:\/\/www.library-management.com\/wp-content\/themes\/library", "boostrap_loc": "https:\/\/www.library-management.com\/wp-content\/themes\/library\/css\/bootstrap.min.css", "number_of_row": "25", "defined_fine": "10" };
/* ]]> */
</script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/custom.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ng-file-upload-shim.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ng-file-upload.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/custom_ang.js?ver=4.9.8'></script>
<link rel='https://api.w.org/' href='https://www.library-management.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.library-management.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.library-management.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.9.8" />
<link rel="canonical" href="https://www.library-management.com/manage-issued-book-for-users/" />
<link rel='shortlink' href='https://www.library-management.com/?p=16' />
<link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-issued-book-for-users%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-issued-book-for-users%2F&#038;format=xml" />
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  

</head>
    <script>
        $(function () {
            getUserID();
            getUserFullName();
        });
        function getBookIssuedDetails() {
            $.ajax({
                type: "GET",
                url: "api/myapi/getBookIssuedDetails",
                contentType: "application/json; charset=utf-8",
                data: {},
                dataType: "json",
                success: function (data) {
                    load_getBookIssuedDetails(data);

                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function return_Book(studentID, bookCode) {
            var studentID = studentID;
            var bookCode = bookCode;
            $.ajax({
                type: "POST",
                url: "api/myapi/releaseTheBook",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({
                    studentID: studentID, bookID: bookCode
                }),
                dataType: "json",
                success: function (data) {
                    alert(data.message);
                    getBookIssuedDetails();
                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function extend_Book(studentID, bookCode) {
            var studentID = studentID;
            var bookCode = bookCode;
            $.ajax({
                type: "POST",
                url: "api/myapi/extendTheBook",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({
                    studentID: studentID, bookID: bookCode
                }),
                dataType: "json",
                success: function (data) {
                    alert(data.message);
                    getUserID();
                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function load_getBookIssuedDetails(data) {
            $("#bookIssueDetailsTable").find("tr:gt(0)").remove();
            for (var i = 0; i < data.length; i++) {
                $('#bookIssueDetailsTable').append('<tr><td>' + data[i].bookCode + '</td><td>' + data[i].bookTitle + '</td><td>' + data[i].bookDescription + '</td><td>' + data[i].issueDateString + '</td><td>' + data[i].returnDateString + '</td><td>' + data[i].dateCount + '</td><td style="text-align:right">Rs. ' + data[i].fineAmount + '</td><td><input  type=\'button\' onclick=\'checkFineAvailable("' + data[i].studentID + '","' + data[i].bookCode + '","' + data[i].fineAmount + '","' + data[i].first_name + ' ' + data[i].last_name +'","extendBook")\' value=\'Pay Now\' /></td></tr>');
            }
        }
        function getBookIssuedDetailsFromStudentID(data) {

            $.ajax({
                type: "GET",
                url: "api/myapi/getBookIssuedDetailsFromStudentID",
                contentType: "application/json; charset=utf-8",
                data: { student_ID: data },
                dataType: "json",
                success: function (data) {
                    load_getBookIssuedDetails(data);

                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function getBookIssuedDetailsFromStudentName() {
            //document.getElementById("filter_userId").value = "";
            //document.getElementById("filter_BookID").value = "";
            var student_name = document.getElementById('filter_UserName').value;
            $.ajax({
                type: "GET",
                url: "api/myapi/getBookIssuedDetailsFromstudent_name",
                contentType: "application/json; charset=utf-8",
                data: { student_name: student_name },
                dataType: "json",
                success: function (data) {
                    load_getBookIssuedDetails(data);

                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function getBookIssuedDetailsFromBookID() {
            //document.getElementById("filter_userId").value = "";
            //document.getElementById("filter_UserName").value = "";
            var bookID = document.getElementById('filter_BookID').value;
            $.ajax({
                type: "GET",
                url: "api/myapi/getBookIssuedDetailsFromBookID",
                contentType: "application/json; charset=utf-8",
                data: { bookID: bookID },
                dataType: "json",
                success: function (data) {
                    load_getBookIssuedDetails(data);

                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function checkFineAvailable(studentID, bookCode, fineAmount, studentName, status) {
            var fineAmount = fineAmount;
            if (fineAmount > 0) {
                window.location.href = "PayFinesToBank.aspx?fineAmount=" + fineAmount + "&&bookCode=" + bookCode + "&&studentID=" + studentID + "&&studentName=" + studentName + "&&status=" + status;
            } else {
                if (status == "returnBook") {
                    return_Book(studentID, bookCode);
                } else if (status == "extendBook") {
                    extend_Book(studentID, bookCode);
                }

            }

        }
        function getUserID() {
            var LoggedUser = mycookie();
            jQuery.ajax({
                type: "GET",
                url: "api/myapi/getUserID",
                data: { LoggedUser: LoggedUser },
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {
                    getBookIssuedDetailsFromStudentID(data);
                },
                failure: function (response) {
                    alert(response.d);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function getUserFullName() {
            var LoggedUser = mycookie();
            jQuery.ajax({
                type: "GET",
                url: "api/myapi/getUserFullName",
                data: { LoggedUser: LoggedUser },
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {
                    document.getElementById("p1").innerHTML = data;
                    document.getElementById("p2").innerHTML = data;
                    document.getElementById("p3").innerHTML = data;
                },
                failure: function (response) {
                    alert(response.d);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
</script>
<body class="page-template page-template-booklistforuser page-template-booklistforuser-php page page-id-11 logged-in hold-transition skin-blue sidebar-mini">
    <div class="wrapper" id="style-5">

        <div ng-controller="sideBarCtrl">
            <header class="main-header">
                <a href="https://www.library-management.com/dashboard/" class="logo">
                    <span class="logo-mini"><b>LMS</b></span>
                    <span class="logo-lg"><b>User Panel</b></span>
                </a>

                <nav class="navbar navbar-static-top">
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img
                                        ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/IMG_1524749478.jpeg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                        class="user-image" style="float: inherit;" alt="User Image">
                                    <span class="hidden-xs" id="p3">Tasha R  Tyson</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="user-header">
                                        <img
                                            ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/IMG_1524749478-150x150.jpeg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                            class="img-circle" alt="User Image">

                                        <p id="p2">
                                            Tasha R  Tyson - Users
                  <small>Member since Apr 2018</small>
                                        </p>
                                    </li>


                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="UserProfile.aspx" style="height: 37px;"
                                                class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="SystemLogin.aspx" style="height: 37px;"
                                                class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>


                        </ul>
                    </div>
                </nav>
            </header>

            <aside class="main-sidebar">

                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img
                                ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/IMG_1524749478-150x150.jpeg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <%--<input name="book_title" id="book_title" ng-model="book_title"
                                                            placeholder="Book Title" class="form-control" type="text" disabled>--%>
                            <p id="p1">Tasha R  Tyson </p>
                            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/list-book-for-user/','') }">
                            <a href="ListBookForUser.aspx">
                                <i class="fa fa-list"></i><span>Dashboard</span>
                            </a>
                        </li>
                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/change-password/','') }">
                            <a href="ChangePassword.aspx">
                                <i class="fa fa-graduation-cap "></i><span>Change Password</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-issued-book-for-users/','') }">
                            <a href="manage-issued-book-for-users.aspx">
                                <i class="fa fa-list"></i><span>View Issued Books</span>
                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-return-archives-user/','') }">
                            <a href="manage-return-archives-user.aspx">
                                <i class="fa fa-list"></i><span>View All Archive Books</span>
                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/request-book/','') }">
                            <a href="RequestBook.aspx">
                                <i class="fa fa-list"></i><span>Submit Book Request</span>
                            </a>
                        </li>

                        <%--<li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/about-software/','') }">
                            <a href="https://www.library-management.com/about-software/">
                                <i class="fa fa-clock-o "></i><span>About Software</span>
                            </a>
                        </li>--%>


                    </ul>
                </section>

            </aside>
        </div>







<div class="content-wrapper" ng-controller="managementofissuedbooksUserCtrl">

  <section class="content-header">
    <h1>
      Dashboard
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">My Issued Books List</li>
    </ol>
  </section>


  <section class="content" style="min-height: 100%;">

    <div class="box box-default">
      <div class="box-header with-border">

      </div>

      <div class="box-body" style="">
        <div class="row">
          <div class="col-md-12">
                          <input type="hidden" id="user_id" name="user_id" value="1001">

            <table class="table table-bordered table-striped" id="bookIssueDetailsTable"
                   style="font-size: small; margin-bottom: 0px;   padding: 10px;">
              <thead>
              <tr>
                <th style="display:none;">?</th>
                <th style="">Book ID</th>
                <th style="">Book Name</th>
                <th style="width: 187px; ">Book Desc</th>
                <th style="">Issued Date</th>
                <th style="">Date Due</th>
                <th style="">Days To Go</th>
                <th class="misb_userstatus" class="tbl_status" style="">Fine Amount</th>
                <th style="width: 120px;">Action</th>
              </tr>
              </thead>
              <tbody id="tb_manage_issue_book_container">
              <tr ng-show="issue_book_db.length"
                  ng-repeat="x in issue_book_db | filter:{UserId : AjUserId} | filter:query as results"
                  ng-class="{delayed_book: classMng(x.DateToReturn)}">
                <td style="display:none;"></td>
                <td ng-show="true">
                  <button ng-show="diffDate(x.DateToReturn) < 0 && x.ApprovedStatus==null && x.PaymentStatus==null"
                          ng-click="openPaymentPage(x)" class="btn btn-primary">
                    Pay Due
                  </button>
                  <span ng-show="diffDate(x.DateToReturn) >= 0">None</span>
                  <span ng-show="x.PaymentStatus=='Success'">Due Paid <br/><span
                        style="font-size: 11px;color: green;font-weight: bold;"
                        ng-show="x.ApprovedStatus=='NotApproved'">Waiting Approval <br/>
                    <i ng-show="x.ApprovedStatus=='NotApproved'" class="fa fa-info-circle" aria-hidden="true" tooltips
                       tooltip-template="You have not submitted the book.After the submission the admin will approved the payment.Make sure to submit within 1-2 days."
                       tooltip-side="bottom"></i>
                    </span></span>

                  <span ng-show="x.PaymentStatus!='Success' && x.PaymentStatus!=null">Payment failed<br/>
                  <i class="fa fa-info-circle" aria-hidden="true" tooltips
                     tooltip-template="Something is not right.If you have made the payment you can contact the admin for further queries."
                     tooltip-side="bottom"></i>
                  </span>


                </td>
                <td>{{x.BookId}}</td>
                <td>{{x.BookName}}</td>
                <td>{{x.BookDesc}}</td>
                <td>{{x.UserId}}</td>
                <td>{{x.UserName}}</td>
                <td>{{x.DateBorrowed | cmdate:'dd-MM-yyyy'}}</td>
                <td>{{x.DateToReturn | cmdate:'dd-MM-yyyy'}}</td>
                <td>{{diffDate(x.DateToReturn)}}</td>


              </tr>

              <tr ng-show="!results.length">
                <td colspan="9" style="text-align:center;">No books has been issued yet!.</td>
              </tr>

              </tbody>
            </table>
          </div>
        </div>
      </div>

      <div class="box-footer">
      </div>
    </div>
  </section>


  <div class="modal fade" id="paymentStep1" tabindex="-1" role="dialog"
       aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog lg-modal" style="width:40%;">
      <div class="modal-content fix_radius">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span
                aria-hidden="true">×</span><span class="sr-only">Close</span>
          </button>
          <h3 class="modal-title" id="lineModalLabel">Payment Details</h3>
        </div>
        <div class="modal-body" style="padding-top: 10px;padding-right: 35px;">
          <div class="row">
            <table class="table table-bordered" style="margin: 0 auto; margin-left: 2%;">
              <form method="post" action="https://www.library-management.com/preview-due/" target="_blank">
                <!--          <form method="post" action="http://www.ricomart.com/test_lib/resubmitter.php"-->
                <!--                    target="_blank">-->
                <input type="hidden" id="currency" name="currency"
                       value="INR"/>
                <input type="hidden" id="order_id" name="order_id"
                       value="12323184226" / >
                <input type="hidden" name="tid" id="tid" value="1835"/>
                <input type="hidden" id="amount" name="amount" value="1" / >
                <input type="hidden" id="merchant_id" name="merchant_id"
                       value="123456"/>
                <input type="hidden" id="merchant_param1" name="merchant_param1" value=""/>
                <input type="hidden" id="merchant_param2" name="merchant_param2" value="" / >
                <input type="hidden" id="merchant_param3" name="merchant_param3" value="" / >
                <input type="hidden" id="merchant_param4" name="merchant_param4" value="" / >
                <input type="hidden" id="language" name="language" value="EN"/>
                                  <input type="hidden" id="img_url" name="img_url" value="https://www.library-management.com/wp-content/themes/library/img/default_university.png" / >
                <input type="hidden" id="integration_type" name="integration_type" value="iframe_normal"/>

                <input type="hidden" id="working_key" name="working_key" value="121212121212121212121212121212121212"
                / >
                <input type="hidden" id="access_code" name="access_code"
                       value="ABCDEFGHIG"/>
                <input type="hidden" id="merchant_data" name="merchant_data"
                       value="123456" / >

                <input type="hidden" id="merchant_param5" name="merchant_param5"
                       value="https://www.library-management.com/manage-issued-book-for-users/#prnc.jhnsn1@gmail.com#https://www.library-management.com#{{v1}}#{{v2}}#{{v3}}"
                / >
                <input type="hidden" id="redirect_url" name="redirect_url"
                       value="https://www.library-management.com/payment-response-handler/"/>
                <input type="hidden" id="redirect_url" name="cancel_url"
                       value="https://www.library-management.com/payment-response-handler/"/>
                <tbody>
                <tr>
                  <td>Due to pay</td>
                  <td>Rs.{{due_to_pay}}</td>
                </tr>
                <tr>
                  <td>Mode</td>
                  <td>Online</td>
                </tr>
                <tr>
                  <td>Delayed Days</td>
                  <td>{{delayed_in_days}}</td>
                </tr>
                <tr>
                  <td>Per Day Fine</td>
                  <td>Rs.{{per_day_fine}}</td>
                </tr>
                <tr>
                  <td>Billing Name</td>
                  <td><input type="text" class="form-control" name="billing_name"/></td>
                </tr>
                <tr>
                  <td>Billing Address</td>
                  <td><textarea name="billing_address" class="form-control" rows="3"></textarea></td>
                </tr>
                <tr>
                  <td>City</td>
                  <td><input type="text" class="form-control" name="billing_city"/></td>
                </tr>
                <tr>
                  <td>State</td>
                  <td><input type="text" class="form-control" name="billing_state"/></td>
                </tr>

                <tr>
                <tr>
                  <td>Country</td>
                  <td><input type="text" class="form-control" name="billing_country"/></td>
                </tr>
                <tr>

                  <td>Zip</td>
                  <td><input type="text" class="form-control" name="billing_zip"/></td>
                </tr>
                <tr>
                  <td>Mobile</td>
                  <td><input type="text" class="form-control" name="billing_tel"/></td>
                </tr>
                <tr>
                  <td>Email Id</td>
                  <td><input type="text" class="form-control" name="billing_email"/></td>
                </tr>
                <tr>
                  <td>Note :</td>
                  <td>You have not submitted the book.After the submission the admin will approved the payment.Make sure to submit within 1-2 days.</td>
                </tr>
                <tr>
                  <td></td>
                  <td>
                    <button class="btn btn-primary" type="submit">Pay Now</button>
                  </td>
                </tr>
                </tbody>
              </form>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>


<script type='text/javascript' src='https://www.library-management.com/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>

<footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.5
  </div>
  <strong>Copyright © 2017-2019 <a href="https://www.library-management.com">LMS</a>.</strong> All
  rights
  reserved. Best Viewed in Chrome & Firefox and above at resolution 1024 X 768
</footer>
</div>
</body>
</html>

 

  
