﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayFines.aspx.cs" Inherits="LMS.PayFines" %>

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
    <link href="CSS/fonts.css" rel="stylesheet">
    <link href="CSS/ionicons.min.css" rel="stylesheet">
    <title></title>
    <link rel='dns-prefetch' href='//s.w.org' />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <link rel='stylesheet' id='bootstrap-css' href='CSS/bootstrap.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='slick-css' href='CSS/slick.css' type='text/css' media='all' />
    <link rel='stylesheet' id='slick_theme-css' href='CSS/slick-theme.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='button-css' href='CSS/button.css' type='text/css' media='all' />
    <link rel='stylesheet' id='adminLTE-css' href='CSS/AdminLTE.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='skin-css' href='CSS/all-skins.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='iziToastCss-css' href='CSS/iziToast.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='tooltipcss-css' href='CSS/angular-tooltips.css' type='text/css' media='all' />
    <link rel='stylesheet' id='datetimepickerCss-css' href='CSS/jquery.datetimepicker.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='angular_bootstrap_toggle_css-css' href='CSS/angular-bootstrap-toggle.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='datatable_css-css' href='CSS/dataTables.bootstrap.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='mainstyle-css' href='CSS/style.css' type='text/css' media='all' />
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="Js/cookiefile.js"></script>
    <script type='text/javascript' src='Js/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='Js/bootstrap.min.js'></script>
    <script type='text/javascript' src='Js/jquery-ui.min.js'></script>
    <script type='text/javascript' src='Js/slick.min.js'></script>
    <script type='text/javascript' src='Js/ripple-effect.js'></script>
    <script type='text/javascript' src='Js/jquery.validate.js'></script>
    <script type='text/javascript' src='Js/angular.min.js'></script>
    <script type='text/javascript' src='Js/angular-animate.js'></script>
    <script type='text/javascript' src='Js/jquery.numeric.min.js'></script>
    <script type='text/javascript' src='Js/iziToast.min.js'></script>
    <script type='text/javascript' src='Js/angular-tooltips.min.js'></script>
    <script type='text/javascript' src='Js/jquery.datetimepicker.full.js'></script>
    <script type='text/javascript' src='Js/jquery.datetimepicker.min.js'></script>
    <script type='text/javascript' src='Js/app.min.js'></script>
    <script type='text/javascript' src='Js/jquery.slides.min.js'></script>
    <script type='text/javascript' src='Js/webcam.min.js'></script>
    <script type='text/javascript' src='Js/ng-camera.js'></script>
    <script type='text/javascript' src='Js/canvasjs.min.js'></script>
    <script type='text/javascript' src='Js/angular-bootstrap-toggle.min.js'></script>
    <script type='text/javascript' src='Js/bootbox.min.js'></script>
    <script type='text/javascript' src='Js/jquery.blockUI.js'></script>
    <script type='text/javascript' src='Js/jquery.dataTables.min.js'></script>
    <script type='text/javascript' src='Js/dataTables.bootstrap.min.js'></script>
    <script type='text/javascript' src='Js/tinymce.min.js'></script>
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
    <link rel="canonical" href="https://www.library-management.com/add-user/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=7' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fadd-user%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fadd-user%2F&#038;format=xml" />
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
        status = getParameterByName('status');
        $("#studentID").val(studentID);
        $("#studentName").val(studentName);
        getDelayBooks(studentID);

        $("#payment").keypress(function (e) {
            if (e.which == 13) {
                var totalFine = document.getElementById('totalFine').value;
                var payment = document.getElementById('payment').value;
                $("#balance").val(payment - totalFine);
            }
        });
        getUserFullName();
    });
    function getDelayBooks(studentID) {
        $.ajax({
            type: "GET",
            url: "api/myapi/getDelayBooks",
            contentType: "application/json; charset=utf-8",
            data: { studentID: studentID },
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
            $("#totalFine").val(totalFineAmount);
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
        var TransactionID = "0";
        var branchName = "NO";
        var PaymentApproved = true;
        if (payment >= totalFineAmount) {
            $.ajax({
                type: "GET",
                url: "api/myapi/makePayments",
                contentType: "application/json; charset=utf-8",
                data: { studentID: studentID, totalFineAmount: totalFineAmount, reason: reason, TransactionID: TransactionID, branchName: branchName, PaymentApproved: PaymentApproved },
                dataType: "json",
                success: function (data) {
                    alert(data.message);
                    if (status == "returnBook") {
                        return_Book(studentID, bookCode);
                    } else if (status == "extendBook") {
                        extend_Book(studentID, bookCode);
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
                window.location.href = "ManageIssuedBooks.aspx";
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
                window.location.href = "ManageIssuedBooks.aspx";
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
            data: { studentID: studentID },
            dataType: "json",
            success: function (data) {
                alert(data.message);
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
                document.getElementById("p5").innerHTML = data;
                document.getElementById("p6").innerHTML = data;
                document.getElementById("p7").innerHTML = data;
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
</script>
<body class="page-template page-template-manageissuedbooks page-template-manageissuedbooks-php page page-id-25 logged-in hold-transition skin-blue sidebar-mini">
    <div class="wrapper" id="style-5">
        <div ng-controller="sideBarCtrl">
            <header class="main-header">

                <a class="logo">

                    <span class="logo-mini"><b>LMS</b></span>

                    <span class="logo-lg"><b>Master Panel </b></span>
                </a>

                <nav class="navbar navbar-static-top">

                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                            <%--<li class="dropdown notifications-menu">
                                <a href="https://www.library-management.com/view-request-book-data/">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">{{cnt_not_approved}}</span>
                                </a>
                            </li>--%>
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="height: 51px;">
                                    <img ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                        class="user-image" alt="User Image">
                                    <span class="hidden-xs" id="p5">John Dsouza</span>
                                </a>
                                <ul class="dropdown-menu">

                                    <li class="user-header">
                                        <img ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                            class="img-circle" alt="User Image">

                                        <p id="p6">
                                            John Dsouza                  - Librarian                  <small>Member since . Apr 2018</small>
                                        </p>
                                    </li>


                                    <li class="user-footer">
                                        <div class="" style="padding-left: 2%;">
                                            <%--<div class="pull-left">
                                                <a href="https://www.library-management.com/update-profile/"
                                                    class="btn btn-default btn-flat" style="height: 37px;">Profile</a>
                                            </div>
                                            <div class="pull-left">
                                                <a target="_blank" href="https://www.library-management.com"
                                                    class="btn btn-default btn-flat" style="height: 37px;">FrondEnd</a>
                                            </div>--%>
                                            <div class="pull-left">
                                                <a href="SystemLogin.aspx"
                                                    class="btn btn-default btn-flat" style="height: 37px;">Sign out</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <%--<li>
                                <a href="https://www.library-management.com/other-settings/"><i class="fa fa-gears"></i></a>
                            </li>--%>
                        </ul>
                    </div>
                </nav>
            </header>

            <aside class="main-sidebar">

                <section class="sidebar">

                    <div class="user-panel">
                        <div class="pull-left image">
                            <img ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p id="p7">John Dsouza</p>
                            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/dashboard/','') }">
                            <a href="Dashboard.aspx">
                                <i class="fa fa-tachometer-alt"></i><span>Dashboard</span>

                            </a>
                        </li>


                        <li id="MyPorfileMain" class="treeview">
                            <a href="#">
                                <i class="fa fa-gift"></i><span>My Profile</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/change-password/','MyPorfileMain') }">
                                    <a href="ChangePassword.aspx">
                                        <i class="fa fa-circle-o"></i>Change
                                        Password
                                    </a>
                                </li>
                                <%--<li ng-class="{ active: isActive('https://www.library-management.com/update-profile/','MyPorfileMain') }">
                                    <a href="UpdateProfile.aspx>
                                        <i class="fa fa-circle-o"></i>Update
                                        Details
                                    </a>
                                </li>--%>
                            </ul>
                        </li>


                        <li id="ManageBookMain" class="treeview">
                            <a href="#">
                                <i class="fa fa-gift"></i><span>Manage Books</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-book/','ManageBookMain') }">
                                    <a href="AddBook.aspx">
                                        <i class="fa fa-circle-o"></i>Add
                                        Books
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-books/','ManageBookMain') }">
                                    <a href="ManageBooks.aspx">
                                        <i class="fa fa-circle-o"></i>View
                                        Books
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <%--<li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-fines/','') }">
                            <a href="ManageFine.aspx">
                                <i class="fa fa-money-bill-alt"></i><span>Manage Fines</span>

                            </a>
                        </li>--%>
                        <li ng-show="true" ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-online-dues/','') }">
                            <a href="ApproveFinePayments.aspx">
                                <i class="fa fa-money-bill-alt"></i><span>Manage Online Paid Dues</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/issue-books/','') }">
                            <a href="IssueBooks.aspx">
                                <i class="fa fa-folder-open"></i><span>Issue Books</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-issued-books/','') }">
                            <a href="ManageIssuedBooks.aspx">
                                <i class="fa fa-list"></i><span>View All Issued Books</span>

                            </a>
                        </li>

                        <%--<li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-return-archive/','') }">
                            <a href="https://www.library-management.com/manage-return-archive/">
                                <i class="fa fa-clock-o "></i><span>View All Archive Books</span>

                            </a>
                        </li>--%>


                        <li id="MainUserMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i><span>Manage Users</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-user/','MainUserMenu') }">
                                    <a href="AddUser.aspx">
                                        <i class="fa fa-circle-o"></i>Add
                                        User
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-users/','MainUserMenu') }">
                                    <a href="ManageUsers.aspx">
                                        <i class="fa fa-circle-o"></i>View
                                        All Users
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li id="SettingMainMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-sliders-h"></i><span>Manage Settings</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-course/','SettingMainMenu') }">
                                    <a href="ManageCourse.aspx">
                                        <i class="fa fa-circle-o"></i>Manage
                                        Courses
                                    </a>
                                </li>
                                <%--<li ng-class="{ active: isActive('https://www.library-management.com/manage-years/','SettingMainMenu') }">
                                    <a href="https://www.library-management.com/manage-years/"><i class="fa fa-circle-o"></i>Manage Years</a>
                                </li>--%>
                            </ul>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/view-request-book-data/','') }">
                            <a href="ViewRequestBookData.aspx">
                                <i class="fa fa-heart"></i><span>View Request Book Data</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-slides/','') }">
                            <a href="ManageSlides.aspx">
                                <i class="fa fa-television"></i><span>Daily Works</span>

                            </a>
                        </li>


                        <%--<li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-institution/','') }">
                            <a href="https://www.library-management.com/manage-institution/">
                                <i class="fa fa-sliders "></i><span>Institution Setup</span>

                            </a>
                        </li>


                        <li id="ManagePageMainMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-pagelines"></i><span>Manage Pages</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-page/','ManagePageMainMenu') }">
                                    <a href="https://www.library-management.com/add-page/"><i class="fa fa-circle-o"></i>Add Page</a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-pages/','ManagePageMainMenu') }">
                                    <a href="https://www.library-management.com/manage-pages/"><i class="fa fa-circle-o"></i>List All Page</a>
                                </li>
                            </ul>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/other-settings/','') }">
                            <a href="https://www.library-management.com/other-settings/">
                                <i class="fa fa-gears"></i><span>Other Settings</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/update-control/','') }">
                            <a href="https://www.library-management.com/update-control/">
                                <i class="fa fa-wrench "></i><span>Update Website</span>

                            </a>
                        </li>
                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/report-bugs/','') }">
                            <a href="https://www.library-management.com/report-bugs/">
                                <i class="fa fa-bug"></i><span>Report Bugs</span>

                            </a>
                        </li>
                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/about-software/','') }">
                            <a href="https://www.library-management.com/about-software/">
                                <i class="fa fa-clock-o "></i><span>About Software</span>
                            </a>
                        </li>--%>
                    </ul>
                </section>
                <!-- /.sidebar -->
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
                                            style="position: absolute; margin-top: -18px; right: -15px;"></a>
                                    </label>

                                    <input name="studentID" id="studentID" placeholder="Enter ISBN and Press TAB"
                                        class="form-control" type="text" readonly>
                                </div>
                                <div class="form-group mb0 col-sm-6">
                                    <label>
                                        Student Name<a class="studentID"
                                            style="position: absolute; margin-top: -18px; right: -15px;"></a>
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
                                                <th scope="col" style="text-align: center">Fine   (Rs.)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                    <div class="panel-body form-horizontal">

                                        <div class="form-group mb0 col-sm-12">
                                            <label>
                                                Total Fine (Rs.)<a class="studentID"
                                                    style="position: absolute; margin-top: -18px; right: -15px;"></a>
                                            </label>

                                            <input name="totalFine" id="totalFine" placeholder=""
                                                class="form-control" type="text" readonly>
                                        </div>
                                        <div class="form-group mb0 col-sm-12">
                                            <label>
                                                Payment (Rs.)<a class="studentID"
                                                    style="position: absolute; margin-top: -18px; right: -15px;"></a>
                                            </label>

                                            <input name="payment" id="payment" placeholder=""
                                                class="form-control" type="number">
                                        </div>
                                        <div class="form-group mb0 col-sm-12">
                                            <label>
                                                Balance (Rs.)<a class="studentID"
                                                    style="position: absolute; margin-top: -18px; right: -15px;"></a>
                                            </label>

                                            <input name="balance" id="balance" placeholder=""
                                                class="form-control" type="text" readonly>
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
    <strong>Copyright © 2017-2019 <a href="https://www.library-management.com">LMS</a>.</strong> All
            rights
            reserved. Best Viewed in Chrome & Firefox and above at resolution 1024 X 768
        </footer>
    </div>
</body>
</html>




<script async src="https://www.googletagmanager.com/gtag/js?id=UA-91268321-2"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-91268321-2');
</script>

