<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageIssuedBooks.aspx.cs" Inherits="LMS.ManageIssuedBooks" %>

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
    <title>Manage Issued Books &#8211; LMS a WordPress Theme</title>
    <link rel='dns-prefetch' href='//s.w.org' />
    <link rel="stylesheet" type="text/css" href="CSS/autosuggest.css" />
    <link rel='stylesheet' id='font_awesome-css' href='CSS/font-awesome.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='bootstrap-css' href='https://www.library-management.com/wp-content/themes/library/css/bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='slick-css' href='https://www.library-management.com/wp-content/themes/library/css/slick.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='slick_theme-css' href='https://www.library-management.com/wp-content/themes/library/css/slick-theme.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='button-css' href='https://www.library-management.com/wp-content/themes/library/css/button.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='adminLTE-css' href='https://www.library-management.com/wp-content/themes/library/css/AdminLTE.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='skin-css' href='https://www.library-management.com/wp-content/themes/library/css/_all-skins.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='iziToastCss-css' href='https://www.library-management.com/wp-content/themes/library/css/iziToast.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='tooltipcss-css' href='https://www.library-management.com/wp-content/themes/library/css/angular-tooltips.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='datetimepickerCss-css' href='https://www.library-management.com/wp-content/themes/library/css/jquery.datetimepicker.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='angular_bootstrap_toggle_css-css' href='https://www.library-management.com/wp-content/themes/library/css/angular-bootstrap-toggle.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='datatable_css-css' href='https://www.library-management.com/wp-content/themes/library/css/dataTables.bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
    <link rel='stylesheet' id='mainstyle-css' href='https://www.library-management.com/wp-content/themes/library/style.css?ver=4.9.8' type='text/css' media='all' />
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="Js/cookiefile.js"></script>
    <script type="text/javascript" src="Js/autosuggest1.js"></script>
    <script type="text/javascript" src="Js/autosuggest2.js"></script>
    <script type="text/javascript" src="Js/suggestionsUserID.js"></script>
    <script type="text/javascript" src="Js/suggestionsBookCode.js"></script>
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
    <script type='text/javascript' src='Js/custom_ang.js'></script>
    <link rel='https://api.w.org/' href='https://www.library-management.com/wp-json/' />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.library-management.com/xmlrpc.php?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.library-management.com/wp-includes/wlwmanifest.xml" />
    <meta name="generator" content="WordPress 4.9.8" />
    <link rel="canonical" href="https://www.library-management.com/manage-issued-books/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=25' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-issued-books%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-issued-books%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<script>
    $(function () {
        getBookIssuedDetails();
        window.onload = function () {
            var oTextbox = new AutoSuggestControl(document.getElementById("filter_userId"), new StateSuggestions());
            var oTextbox = new AutoSuggestControl(document.getElementById("filter_BookID"), new StateSuggestions());
        }
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
                getBookIssuedDetails();
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
            $('#bookIssueDetailsTable').append('<tr><td>' + data[i].bookCode + '</td><td>' + data[i].bookTitle + '</td><td>' + data[i].studentID + '</td><td>' + data[i].first_name + ' ' + data[i].last_name + '</td><td>' + data[i].issueDateString + '</td><td>' + data[i].returnDateString + '</td><td style="text-align:right">Rs. ' + data[i].fineAmount + '</td><td><input  type=\'button\' onclick=\'checkFineAvailable("' +data[i].studentID+'","'+ data[i].bookCode + '","'+data[i].fineAmount+'","'+data[i].first_name + ' ' + data[i].last_name+'","returnBook")\' value=\'Return Book\' /><input  type=\'button\' onclick=\'checkFineAvailable("' +data[i].studentID+'","'+ data[i].bookCode + '","'+data[i].fineAmount+'","'+data[i].first_name + ' ' + data[i].last_name+'","extendBook")\' value=\'Extend Book\' /></td>/tr>');
        }
    }
    function getBookIssuedDetailsFromStudentID() {
        //document.getElementById("filter_UserName").value = "";
        //document.getElementById("filter_BookID").value = "";
        var student_ID = document.getElementById('filter_userId').value;
        $.ajax({
            type: "GET",
            url: "api/myapi/getBookIssuedDetailsFromStudentID",
            contentType: "application/json; charset=utf-8",
            data: {student_ID:student_ID},
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
            data: {student_name:student_name},
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
            data: {bookID:bookID},
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
            window.location.href = "PayFines.aspx?fineAmount=" + fineAmount+"&&bookCode="+bookCode+"&&studentID="+studentID+"&&studentName="+studentName+"&&status="+status;
        } else {
            if (status == "returnBook") {
                return_Book(studentID, bookCode);
            } else if (status == "extendBook") {
                extend_Book(studentID, bookCode);
            }
            
        }
        
    }
</script>
<body class="page-template page-template-manageissuedbooks page-template-manageissuedbooks-php page page-id-25 logged-in hold-transition skin-blue sidebar-mini">
    <div class="wrapper" id="style-5">
        <div ng-controller="sideBarCtrl">
            <header class="main-header">

                <a href="https://www.library-management.com/dashboard/" class="logo">

                    <span class="logo-mini"><b>LMS</b></span>

                    <span class="logo-lg"><b>Master Panel </b></span>
                </a>

                <nav class="navbar navbar-static-top">

                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                            <li class="dropdown notifications-menu">
                                <a href="https://www.library-management.com/view-request-book-data/">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">{{cnt_not_approved}}</span>
                                </a>
                            </li>
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="height: 51px;">
                                    <img ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                        class="user-image" alt="User Image">
                                    <span class="hidden-xs">John Dsouza</span>
                                </a>
                                <ul class="dropdown-menu">

                                    <li class="user-header">
                                        <img ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                            class="img-circle" alt="User Image">

                                        <p>
                                            John Dsouza                  - Librarian                  <small>Member since . Apr 2018</small>
                                        </p>
                                    </li>


                                    <li class="user-footer">
                                        <div class="" style="padding-left: 2%;">
                                            <div class="pull-left">
                                                <a href="https://www.library-management.com/update-profile/"
                                                    class="btn btn-default btn-flat" style="height: 37px;">Profile</a>
                                            </div>
                                            <div class="pull-left">
                                                <a target="_blank" href="https://www.library-management.com"
                                                    class="btn btn-default btn-flat" style="height: 37px;">FrondEnd</a>
                                            </div>
                                            <div class="pull-left">
                                                <a href="https://www.library-management.com/wp-login.php?action=logout&amp;redirect_to=https%3A%2F%2Fwww.library-management.com&amp;_wpnonce=b67c9bf043"
                                                    class="btn btn-default btn-flat" style="height: 37px;">Sign out</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="https://www.library-management.com/other-settings/"><i class="fa fa-gears"></i></a>
                            </li>
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
                            <p>John Dsouza</p>
                            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/dashboard/','') }">
                            <a href="https://www.library-management.com/dashboard/">
                                <i class="fa fa-dashboard"></i><span>Dashboard</span>

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
                                    <a href="https://www.library-management.com/change-password/">
                                        <i class="fa fa-circle-o"></i>Change
                                        Password
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/update-profile/','MyPorfileMain') }">
                                    <a href="https://www.library-management.com/update-profile/">
                                        <i class="fa fa-circle-o"></i>Update
                                        Details
                                    </a>
                                </li>
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
                                    <a href="https://www.library-management.com/add-book/">
                                        <i class="fa fa-circle-o"></i>Add
                                        Books
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-books/','ManageBookMain') }">
                                    <a href="https://www.library-management.com/manage-books/">
                                        <i class="fa fa-circle-o"></i>View
                                        Books
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-fines/','') }">
                            <a href="https://www.library-management.com/manage-fines/">
                                <i class="fa fa-money"></i><span>Manage Fines</span>

                            </a>
                        </li>
                        <li ng-show="true" ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-online-dues/','') }">
                            <a href="https://www.library-management.com/manage-online-dues/">
                                <i class="fa fa-money"></i><span>Manage Online Paid Dues</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/issue-books/','') }">
                            <a href="https://www.library-management.com/issue-books/">
                                <i class="fa fa-folder-open-o"></i><span>Issue Books</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-issued-books/','') }">
                            <a href="https://www.library-management.com/manage-issued-books/">
                                <i class="fa fa-list"></i><span>View All Issued Books</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-return-archive/','') }">
                            <a href="https://www.library-management.com/manage-return-archive/">
                                <i class="fa fa-clock-o "></i><span>View All Archive Books</span>

                            </a>
                        </li>


                        <li id="MainUserMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i><span>Manage Users</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-user/','MainUserMenu') }">
                                    <a href="https://www.library-management.com/add-user/">
                                        <i class="fa fa-circle-o"></i>Add
                                        User
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-users/','MainUserMenu') }">
                                    <a href="https://www.library-management.com/manage-users/">
                                        <i class="fa fa-circle-o"></i>View
                                        All Users
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li id="SettingMainMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-sliders"></i><span>Manage Settings</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-course/','SettingMainMenu') }">
                                    <a href="https://www.library-management.com/manage-course/">
                                        <i class="fa fa-circle-o"></i>Manage
                                        Courses
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-years/','SettingMainMenu') }">
                                    <a href="https://www.library-management.com/manage-years/"><i class="fa fa-circle-o"></i>Manage Years</a>
                                </li>
                            </ul>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/view-request-book-data/','') }">
                            <a href="https://www.library-management.com/view-request-book-data/">
                                <i class="fa fa-heart-o "></i><span>View Request Book Data</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-slides/','') }">
                            <a href="https://www.library-management.com/manage-slides/">
                                <i class="fa fa-television"></i><span>Manage Slides</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-institution/','') }">
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
                        </li>


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
                    <li class="active">Manage Issued Books</li>
                </ol>
            </section>
            <section class="content" style="min-height: 100%;">
                <div class="box box-default" ng-controller="managementofissuedbooksCtrl">
                    <div class="box-header with-border">
                    </div>
                    <div class="box-body" style="">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="mng_issued_book_filter" style="padding-bottom: 7px;">
                                    <form class="form-inline">
                                        <label class="sr-only">ID</label>
                                        <div class="input-group col-md-4 col-xs-12">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input name="user_id" id="filter_userId" ng-model="user_id"
                                                onblur="getBookIssuedDetailsFromStudentID()" placeholder="Type Student ID. Eg : SE/2014/002"
                                                class="form-control" type="text">
                                        </div>

                                        <label class="sr-only">ID</label>
                                        <div class="input-group col-md-4 col-xs-12" style="float: right;">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input name="book_id" id="filter_BookID" ng-model="search.BookId"
                                                onblur="getBookIssuedDetailsFromBookID()" placeholder="Type Book ID. Eg : Book001"
                                                class="form-control" type="text">
                                            <%--<input type="text" class="form-control fix_radius" ng-model="search.BookId"
                                                   id="filter_BookID" placeholder="Type Book ID">--%>
                                        </div>

                                        <label class="sr-only">Persons Name</label>
                                        <div class="input-group col-md-4 col-xs-12" style="float: right;">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" class="form-control fix_radius" ng-model="search.UserName"
                                                id="filter_UserName" onblur="getBookIssuedDetailsFromStudentName()" placeholder="Type Persons Name">
                                        </div>
                                    </form>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table_issued_book common_dt" id="bookIssueDetailsTable"
                                        style="font-size: small; margin-bottom: 0px;">
                                        <thead>
                                            <tr>
                                                <th style="display: none;">?</th>
                                                <th class="misb_bid" style="">Book ID</th>
                                                <th class="misb_bname" style="width: 270px;">Book Name</th>
                                                <th class="misb_userid" style="">User ID</th>
                                                <th class="misb_username" style="">Person Name</th>
                                                <th style="">Issued Date</th>
                                                <th style="">Date Due</th>
                                                <th class="misb_userstatus" class="tbl_status" style="">Fine Amount</th>
                                                <th style="width: 120px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tb_manage_issue_book_container">
                                            <tr ng-show="issue_book_db.length" ng-repeat="x in issue_book_db | filter:search"
                                                ng-class="diffDate(x.DateToReturn) < 0 ? 'delayed_book' : ''">
                                                <td style="display: none;"></td>
                                                <td class="misb_bid">{{x.BookId}}</td>
                                                <td class="misb_bname">{{x.BookName}}</td>
                                                <td class="misb_userid">{{x.UserId}}</td>
                                                <td class="misb_username">{{x.UserName}}</td>
                                                <td>{{x.DateBorrowed | cmdate:'dd-MM-yyyy'}}</td>
                                                <td>{{x.DateToReturn | cmdate:'dd-MM-yyyy'}}</td>
                                                <td class="tbl_status misb_userstatus">
                                                {{diffDate(x.DateToReturn)}}
                                                <td>
                                                    <button class="btn btn-warning fix_radius" ng-click="btn_view(x)">
                                                        <span class="fas fa-undo"></span>
                                                    </button>
                                                    
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="modal fade" id="editReturnBookData" tabindex="-1" role="dialog"
                                    aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog lg-modal" style="width: 40%;">
                                        <div class="modal-content fix_radius">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                                </button>
                                                <h3 class="modal-title" id="lineModalLabel">Return Books Mangement</h3>
                                            </div>
                                            <div class="modal-body" style="padding-top: 10px; padding-right: 35px;">
                                                <div class="row">
                                                    <div class="holder_sub_book_lst">
                                                        <table class="table table-bordered tbl_book_lst">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input type="text" placeholder="Select return date"
                                                                            id="date_of_return" ng-model="date_of_return"
                                                                            class="form-control fix_radius">
                                                                    </td>
                                                                    <td style="padding: 13px; font-size: large;">Rs.
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" id="fine" placeholder="Fine if Any.."
                                                                            ng-model="fine" class="form-control fix_radius">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <textarea rows="2" id="note_on_return"
                                                                            ng-model="note_on_return"
                                                                            class="form-control fix_radius"
                                                                            placeholder="Note if any"></textarea>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <div style="float: right;">
                                                                            <button class="btn btn-primary fix_radius"
                                                                                ng-click="btn_returnBook()">
                                                                                Return Book
                                                                            </button>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade" id="sendSmsModal" tabindex="-1" role="dialog"
                                    aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog lg-modal" style="width: 40%;">
                                        <div class="modal-content fix_radius">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                                </button>
                                                <h3 class="modal-title" id="lineModalLabel">Send {{todo}}</h3>
                                            </div>
                                            <div class="modal-body" style="padding-top: 10px; padding-right: 35px;">
                                                <div class="row">
                                                    <div class="holder_sub_book_lst">
                                                        <style type="text/css">
                                                            .toggle.btn {
                                                                min-width: 121px;
                                                            }
                                                        </style>
                                                        <div style="padding-left: 2%; padding-bottom: 6%; margin-left: 2%; border-bottom: 1px solid lightgrey; margin-bottom: 8px;">

                                                            <div style="width: 20%; float: left;">
                                                                <input type="radio" name="radiotodo" class="rtodo"
                                                                    value="sms" />
                                                                Send Sms
                                                                <br />
                                                            </div>
                                                            <div style="width: 50%; float: left;">
                                                                <input type="radio"
                                                                    name="radiotodo"
                                                                    class="rtodo"
                                                                    value="email"
                                                                    checked="true" />
                                                                Send Email
                                                                <br />
                                                            </div>
                                                        </div>


                                                        <table class="table table-bordered tbl_book_lst" id="i_sendemail">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div class="input-group" style="width: 100%;">
                                                                            <input type="text" id="s_email" ng-model="s_email"
                                                                                class="form-control fix_radius"
                                                                                ng-readonly="email_status">
                                                                            <span class="input-group-addon edt_mob_ret"
                                                                                ng-click="edit_email()">
                                                                                <i class="fa fa-pencil-square-o"></i>
                                                                            </span>
                                                                        </div>
                                                                    </td>

                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <textarea rows="2" id="email_body" ng-model="email_body"
                                                                            class="form-control fix_radius"
                                                                            placeholder="Email Body"></textarea>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <div style="float: right;">
                                                                            <button class="btn btn-primary fix_radius"
                                                                                ng-click="btn_sendEmail()">
                                                                                Send Email
                                                                            </button>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table class="table table-bordered tbl_book_lst" id="i_sendsms">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div class="input-group">
                                                                            <input type="text" id="sms_mob" ng-model="sms_mob"
                                                                                class="form-control fix_radius"
                                                                                ng-readonly="sms_mob_status">
                                                                            <span class="input-group-addon edt_mob_ret"
                                                                                ng-click="reset_sms_mob()">
                                                                                <i class="fa fa-pencil-square-o"></i>
                                                                            </span>
                                                                        </div>
                                                                    </td>

                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <textarea rows="2" id="sms_body" ng-model="sms_body"
                                                                            class="form-control fix_radius"
                                                                            placeholder="Sms Body"></textarea>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <div style="float: right;">
                                                                            <button class="btn btn-primary fix_radius"
                                                                                ng-click="btn_sendSms()">
                                                                                Send Sms
                                                                            </button>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                    </div>
                </div>
            </section>
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



<script>
    function show_payment() {
        bootbox.dialog({
            title: 'Payment can be made via (USD $20) i.e (~Rs.1360)',
            message: 'Paypal [Most Preferred] or via CCAvenue .After the payment you will receive the source code within a hour or two on your paypal email id or on your personal email id.if you want it to be send on a different email-id then write us on lms_dev@outlook.com & we would mail it to you.',
            buttons: {
                noclose: {
                    label: "Paypal",
                    className: 'btn-success',
                    callback: function () {
                        window.open("https://www.paypal.me/Prince898/20");
                        ;
                        return false;
                    }
                },
                ok: {
                    label: "CCAvenue",
                    className: 'btn-success',
                    callback: function () {
                        window.open("http://www.ricomart.com/billing/index.php");
                        return false;
                    }
                }
            }
        });
    }
</script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-91268321-2"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-91268321-2');
</script>

