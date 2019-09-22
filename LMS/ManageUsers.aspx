<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="LMS.ManageUsers" %>

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
    <link rel='stylesheet' id='font_awesome-css' href='https://www.library-management.com/wp-content/themes/library/css/font-awesome.min.css?ver=4.9.8' type='text/css' media='all' />
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
    <link rel="canonical" href="https://www.library-management.com/manage-users/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=18' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-users%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-users%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<script>
    $(function () {
        getStudentDetails();
        getUserFullName();
    });
    function loadStudentTabelFromID() {
        var inlineFormUserID = document.getElementById('inlineFormUserID').value; 
        var inlineFormUserName = document.getElementById('inlineFormUserName').value;
        var inlineFormEmailAddress = document.getElementById('inlineFormEmailAddress').value;
        var inlineFormPhone = document.getElementById('inlineFormPhone').value;
        $.ajax({
            type: "GET",
            url: "api/myapi/getStudentDetailsinlineFormUserID",
            contentType: "application/json; charset=utf-8",
            data: { inlineFormUserID: inlineFormUserID, inlineFormUserName:inlineFormUserName, inlineFormEmailAddress:inlineFormEmailAddress, inlineFormPhone:inlineFormPhone },
            dataType: "json",
            success: function (data) {
                load_Student_data(data);
            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function getStudentDetails() {
        $.ajax({
            type: "GET",
            url: "api/myapi/getStudentDetails",
            contentType: "application/json; charset=utf-8",
            data: {},
            dataType: "json",
            success: function (data) {
                load_Student_data(data);

            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function load_Student_data(data) {
        $("#studentDetailsTable").find("tr:gt(0)").remove();
        for (var i = 0; i < data.length; i++) {
            $('#studentDetailsTable').append('<tr><td>' + data[i].studentID + '</td><td>' + data[i].first_name + ' ' + data[i].last_name + '</td><td>' + data[i].email + '</td><td>' + data[i].phone + '</td><td>' + data[i].address + '</td><td>' + data[i].course_name + '</td><td>' + data[i].year_name + '</td><td></td><<td><a href="AddUser.aspx" ><button id=\'myBtn\'>Update</button></a></td>/tr>');
        }
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
<body class="page-template page-template-manageusers page-template-manageusers-php page page-id-18 logged-in hold-transition skin-blue sidebar-mini">
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
                            <p id="p7">John Dsouza</p>
                            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/dashboard/','') }">
                            <a >
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

        <style>
            .ng-camera-overlay {
                display: none;
            }
        </style>
        <div class="content-wrapper">
            <section class="content-header">
                <h1>Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li class="active">Manage Users</li>
                </ol>
            </section>
            <section class="content">
                <div class="box box-default" ng-controller="UserManagementCtrl">
                    <div class="box-header with-border">
                    </div>
                    <div class="box-body" style="">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="" style="padding-bottom: 7px;">
                                    <form class="form-inline">
                                        <label class="sr-only" for="inlineFormUserID">User ID</label>
                                        <div class="input-group col-md-2 col-xs-12">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" onkeyup="loadStudentTabelFromID()" ng-model="filter_userId"
                                                class="form-control fix_radius" id="inlineFormUserID" placeholder="User ID">
                                        </div>


                                        <label class="sr-only" for="inlineFormUserName">Persons Name</label>
                                        <div class="input-group col-md-3 col-xs-12">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" onkeyup="loadStudentTabelFromID()" class="form-control fix_radius"
                                                id="inlineFormUserName" ng-model="filter_userName" placeholder="Persons Name">
                                        </div>


                                        <label class="sr-only" for="inlineFormEmailAddress">Email</label>
                                        <div class="input-group col-md-3 col-xs-12">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" onkeyup="loadStudentTabelFromID()" ng-model="filter_email"
                                                class="form-control fix_radius" id="inlineFormEmailAddress"
                                                placeholder="Email Address">
                                        </div>

                                        <label class="sr-only" for="inlineFormPhone">Phone</label>
                                        <div class="input-group col-md-3 col-xs-12">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" onkeyup="loadStudentTabelFromID()" ng-model="filter_phone"
                                                class="form-control fix_radius" id="inlineFormPhone" placeholder="Phone">
                                        </div>
                                    </form>

                                </div>

                                <div style="overflow: auto;">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-striped tbluser mng_stud_tbl" id="studentDetailsTable"
                                            style="font-size: small; margin-bottom: 0px; overflow-x: scroll;">
                                            <thead>
                                                <tr>
                                                    <th style="display: none;">?</th>
                                                    <th style="display: none;">?</th>
                                                    <th style="width: 46px;">ID</th>
                                                    <th class="">Name</th>
                                                    <th style="width: 162px;">Email Address</th>
                                                    <th class="">Phone</th>
                                                    <th style="width: 188px;">Street Address</th>
                                                    <th class="">Course</th>
                                                    <th class="">Years</th>
                                                    <th class="">D.A</th>
                                                    <th class="" style="width: 160px;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="user_container"></tbody>
                                        </table>
                                    </div>
                                </div>

                                <div style="float: right; display: none;">
                                    <nav>
                                        <ul class="pagination justify-content-end">
                                            <li class="page-item">
                                                <button class="btn btn-default fix_radius" tabindex="-1"
                                                    ng-click="btn_previous()">
                                                    <i class="fa fa-chevron-left"
                                                        aria-hidden="true"></i>Previous
                                                </button>
                                            </li>
                                            <li class="page-item">
                                                <button class="btn btn-default fix_radius" ng-model="next_btn"
                                                    ng-click="btn_next()">
                                                    Next <i class="fa fa-chevron-right"
                                                        aria-hidden="true"></i>
                                                </button>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>


                                <div class="modal fade" id="printUserIdModal" tabindex="-1" role="dialog"
                                    aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog lg-modal" style="width: 72%;">
                                        <div class="modal-content fix_radius">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                                </button>
                                                <h3 class="modal-title" id="lineModalLabel">Identity Card</h3>
                                            </div>
                                            <div class="modal-body" style="">

                                                <div class="row">
                                                    <div style="padding-left: 14px;">
                                                        <div class="panel panel-default" style="font-size: 12px;"
                                                            id="print_Container">
                                                            <table id="p_tbl1" class="table table-striped"
                                                                style="width: 49%; float: left; table-layout: fixed; border: 1px solid black; height: 330px;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td id="p_img_td" rowspan="8"
                                                                            style="width: 186px; border-right: 1px solid lightgrey;">
                                                                            <img ng-src="{{ printScope.srcPic ||'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                                                                class="img-rounded" alt="User Pic"
                                                                                style="width: 169px; height: 156px;">
                                                                            <div style="margin-top: 7px;">
                                                                                <span style="font-size: 15px; font-weight: 700;">STAMP :</span>
                                                                                <div id="p_stamp"
                                                                                    style="height: 128px; border: 1px solid;">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td style="background-color: beige; padding-bottom: 0px; height: 42px;">
                                                                            <h3 style="text-align: center; font-weight: bold; margin: 2px; margin-bottom: -4px;">Library Card
                                                                            </h3>

                                                                        </td>
                                                                    </tr>
                                                                    <tr style="padding: 0px; height: 25px; padding-top: 6px; padding-left: 8px;">
                                                                        <td style="font-family: -webkit-body; text-align: center; background-color: aliceblue; text-decoration: underline; text-transform: uppercase; font-weight: bold;">Demo University</td>
                                                                    </tr>
                                                                    <tr style="padding: 0px; height: 25px; padding-top: 6px; padding-left: 8px;">
                                                                        <td>Registrar University of Mumbai M.G. Road Fort Mumbai-400032</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>ID : <span style="font-weight: 700;">{{printScope.user_id}}</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Name : {{printScope.name}}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Phone : {{printScope.phone}}</td>
                                                                    </tr>
                                                                    <tr ng-show="printScope.role=='Student'">
                                                                        <td>Course : {{printScope.course_name}} | Year :
                                                                            {{printScope.year_name}}
                                                                        </td>
                                                                    </tr>
                                                                    <tr ng-show="printScope.role=='Teacher'">
                                                                        <td>Designation : {{printScope.role}}
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>YEAR :</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>

                                                            <table id="p_tbl2" class="table table-striped"
                                                                style="width: 50%; float: right; margin-right: 6px; table-layout: fixed; border: 1px solid black; height: 330px;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Email : {{printScope.email}}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Address : {{printScope.address}}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <span style="text-align: left; font-weight: 700;">Instruction</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <ul class="list-group" style="margin-bottom: -1px;">
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">1. The holder of this card is register person of Demo University.</li>
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">2. By this registeration the holder agreeds to abide by the Rules and Regulation of the Institute.</li>
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">3. The Card is for personal use and it is not transfareble.</li>
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">4.  Finder of the lost card are asked to return them to the Program office at the above address.</li>
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">5. Only 2 books can be borrowed on this card.</li>
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">6. Rs 10 will be be charged if this card is lost.</li>
                                                                                <li class="list-group-item"
                                                                                    style="padding: 2px 15px !important;">7. Book will be issued only on presense of this card.</li>
                                                                            </ul>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pmd-ripple-effect"
                                                    ng-click="printPreview()">
                                                    Print
                                                </button>
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


