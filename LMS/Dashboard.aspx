<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LMS.Dashboard" %>

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
    $(function () {
        loadIssedBookCount();
        loadUserCount();
        loadBookCount();
        loadFineSum();
        getUserFullName();
    });
    function loadIssedBookCount() {
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/loadIssedBookCount",
            data: {},
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                document.getElementById("p1").innerHTML = data;
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function loadUserCount() {
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/loadUserCount",
            data: {},
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                document.getElementById("p2").innerHTML = data;
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function loadBookCount() {
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/loadBookCount",
            data: {},
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                document.getElementById("p3").innerHTML = data;
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function loadFineSum() {
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/loadFineSum",
            data: {},
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                document.getElementById("p4").innerHTML = "Rs." +data;
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
<style>
    .card {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        max-width: 300px;
        margin: auto;
        text-align: left;
        font-family: arial;
        
    }

    #card1{
        background-color: deepskyblue;
    }
    #card2{
        background-color: forestgreen;
    }
    #card3{
        background-color: peru;
    }
    #card4{
        background-color: crimson;
    }

    .title {
        color: grey;
        font-size: 18px;
    }
</style>
<body class="page-template page-template-dashboard page-template-dashboard-php page page-id-4 logged-in hold-transition skin-blue sidebar-mini">
    <div class="wrapper" id="style-5">

        <div ng-controller="sideBarCtrl">
            <header class="main-header">

                <a  class="logo">

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
                                    <span class="hidden-xs" id="p5">Tasha R  Tyson</span>
                                </a>
                                <ul class="dropdown-menu">

                                    <li class="user-header">
                                        <img ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                            class="img-circle" alt="User Image">

                                        <p id="p6">
                                            Tasha R  Tyson - Users
                  <small>Member since Apr 2018</small>
                                        </p>
                                    </li>


                                    <li class="user-footer">
                                        <div class="" style="padding-left: 2%;">
                                            <%--<div class="pull-left">
                                                <<a href="UserProfile.aspx" style="height: 37px;"
                                                class="btn btn-default btn-flat">Profile</a>
                                            </div>--%>
                                            <div class="pull-left">
                                                <a href="SystemLogin.aspx" style="height: 37px;"
                                                class="btn btn-default btn-flat">Sign out</a>
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
                            <p id="p7">Tasha R  Tyson </p>
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

        <div class="content-wrapper" ng-controller="DashBoardCtrl">

            <section class="content-header">
                <h1>Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </section>

            <section class="content">

                <div class="row">

                    <div class="col-lg-3 col-xs-4">

                        <a href="ManageIssuedBooks.aspx" style="height: 37px; color:black;"><div class="card" id="card1">
                            <h4>Manage Issued Books : </h4>
                            <h4 id="p1"></h4>
                        </div></a>
                    </div>

                    <div class="col-lg-3 col-xs-4">

                        <a href="ManageUsers.aspx" style="height: 37px; color:black;"><div class="card" id="card2">
                            <h4>Manage Users : </h4>
                            <h4 id="p2"></h4>
                        </div></a>
                    </div>

                    <div class="col-lg-3 col-xs-4">
                        <a href="ManageBooks.aspx" style="height: 37px; color:black;">
                        <div class="card" id="card3">
                            <h4>Manage Books : </h4>
                            <h4 id="p3"></h4>
                        </div></a>
                    </div>

                    <div class="col-lg-3 col-xs-4">
                        <a href="ManageFine.aspx" style="height: 37px; color:black;">
                        <div class="card" id="card4">
                            <h4>Fine Collected : </h4>
                            <h4 id="p4"></h4>
                        </div></a>
                    </div>
                </div>

                <div class="row">
                    <div id="chartContainer" class="img-responsive"></div>


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






