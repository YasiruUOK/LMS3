<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayFinesToBank.aspx.cs" Inherits="LMS.PayFines" %>

<!DOCTYPE html>
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
    <title></title>
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
    var fineAmount;
    var bookCode;
    var studentID;
    var status;
    var totalFineAmount = 0;
    $(function () {
        fineAmount = getParameterByName('fineAmount');
        bookCode = getParameterByName('bookCode');
        studentID = getParameterByName('studentID');
        studentName = getParameterByName('studentName');
        status= getParameterByName('status');
        $("#studentID").val(studentID);
        $("#studentName").val(studentName);
        $("#payment").val(fineAmount);
        getDelayBooks(studentID);
        getUserFullName();
      
    });
    function getDelayBooks(studentID) {
        $.ajax({
            type: "GET",
            url: "api/myapi/getDelayBooks",
            contentType: "application/json; charset=utf-8",
            data: {studentID:studentID},
            dataType: "json",
            success: function (data) {
                load_getBookDetails(data);

            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function load_getBookDetails(data) {
        $("#bookDetailsTable").find("tr:gt(0)").remove();
        totalFineAmount = 0;
        for (var i = 0; i < data.length; i++) {
            $('#bookDetailsTable').append('<tr><td>' + data[i].bookCode + '</td><td>' + data[i].bookTitle + '</td><td>' + data[i].returnDateString + '</td><td style="text-align:right">' + data[i].fineAmount + '</td>/tr>');
            totalFineAmount += data[i].fineAmount;
            $("#payment").val(totalFineAmount);
        }
    }
    function getParameterByName(name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, '\\$&');
        var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, ' '));
    }
    function makePayments() {
        var payment = document.getElementById('payment').value;
        var reason = "Late submittion";
        var TransactionID = document.getElementById('transactionID').value;
        var branchName = document.getElementById('branch').value;
        var PaymentApproved = false;
        if (payment >= totalFineAmount) {
            $.ajax({
            type: "GET",
            url: "api/myapi/makePayments",
            contentType: "application/json; charset=utf-8",
            data: {studentID:studentID, totalFineAmount:totalFineAmount, reason:reason, TransactionID:TransactionID, branchName:branchName, PaymentApproved:PaymentApproved},
            dataType: "json",
                success: function (data) {
                    //alert(data.message);
                    if (status == "returnBook") {
                        return_Book(studentID, bookCode);
                    } else if (status == "extendBook") {
                        copy_BookIssueDetails(studentID, bookCode);
                    }
            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
        }
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
                updateBookDueDate(studentID); //2019-05-28 for update book due date when more than one book available
                window.location.href = "manage-issued-book-for-users.aspx";
            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function copy_BookIssueDetails(studentID, bookCode) {
        var studentID = studentID;
        var bookCode = bookCode;
        $.ajax({
            type: "POST",
            url: "api/myapi/copy_BookIssueDetails",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({
                studentID: studentID, bookID: bookCode
            }),
            dataType: "json",
            success: function (data) {
                //alert(data.message);
                extend_Book(studentID, bookCode);
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
                updateBookDueDate(studentID);
                window.location.href = "manage-issued-book-for-users.aspx";
            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function updateBookDueDate(studentID) {
            $.ajax({
            type: "GET",
            url: "api/myapi/updateBookDueDate",
            contentType: "application/json; charset=utf-8",
            data: {studentID:studentID},
            dataType: "json",
                success: function (data) {
                    //alert(data.message);
            },
            error: function (request) {
                handle_error(request);
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
                <a  class="logo">
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
                                <i class="fa fa-list "></i><span>Change Password</span>

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
        <div class="content-wrapper">
            <section class="content-header">
                <h1>Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li class="active">Pay Fines</li>
                </ol>
            </section>
            <section class="content" style="min-height: 100%;">
                <div class="box box-default" ng-controller="managementofissuedbooksCtrl">
                    <div class="box-header with-border">
                    </div>
                    <div class="box-body" style="">
                        <div class="row">
                            <div class="panel-body form-horizontal">

                                <div class="form-group mb0 col-sm-6">
                                    <label>
                                        Student ID<a class="studentID"
                                            style="position: absolute; margin-top: -18px; right: -15px;">
                                        </a>
                                    </label>

                                    <input name="studentID" id="studentID" placeholder="Enter ISBN and Press TAB"
                                       
                                        class="form-control" type="text" readonly>
                                </div>
                                <div class="form-group mb0 col-sm-6">
                                    <label>
                                        Student Name<a class="studentID"
                                            style="position: absolute; margin-top: -18px; right: -15px;">
                                        </a>
                                    </label>

                                    <input name="studentName" id="studentName" placeholder="Enter ISBN and Press TAB"
                                       
                                        class="form-control" type="text" readonly>
                                </div>

                            </div>
                            <div class="col-md-12">
                                <form>
                                    
                                    <table class="table" id="bookDetailsTable">
                                        <thead>
                                            <tr>
                                                <th scope="col">Book Code</th>
                                                <th scope="col">Book Name</th>
                                                <th scope="col">Due Date</th>
                                                <th scope="col" style="text-align:center">Fine   (Rs.)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                    <div class="panel-body form-horizontal">

                                <div class="form-group mb0 col-sm-12">
                                    <label>
                                        Payment (Rs.)<a class="studentID"
                                            style="position: absolute; margin-top: -18px; right: -15px;">
                                        </a>
                                    </label>

                                    <input name="payment" id="payment" placeholder=""
                                       
                                        class="form-control" type="text" readonly>
                                </div>
                                <div class="form-group mb0 col-sm-12">
                                    <label>
                                        Transaction ID<a class="studentID"
                                            style="position: absolute; margin-top: -18px; right: -15px;">
                                        </a>
                                    </label>

                                    <input name="transactionID" id="transactionID" placeholder=""
                                       
                                        class="form-control" type="number">
                                </div>
                                        <div class="form-group mb0 col-sm-12">
                                    <label>
                                        Branch Name<a class="studentID"
                                            style="position: absolute; margin-top: -18px; right: -15px;">
                                        </a>
                                    </label>

                                    <input name="branch" id="branch" placeholder=""
                                       
                                        class="form-control" type="text">
                                </div>

                            </div>
                                    <button type="submit" class="btn btn-primary" onclick="makePayments();">Pay Now</button>
                                </form>


                            </div>
                        </div>
                    </div>
                    
                    <div class="box-footer">
                    </div>
                </div>
            </section>
        </div>
        <script type='text/javascript' src='https://www.library-management.com/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>

    </div>
</body>
</html>




<script async src="https://www.googletagmanager.com/gtag/js?id=UA-91268321-2"></script>

