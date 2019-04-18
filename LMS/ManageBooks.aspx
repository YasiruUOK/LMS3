<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageBooks.aspx.cs" Inherits="LMS.ManageBooks" %>

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
    <title>Manage Books &#8211; LMS a WordPress Theme</title>
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
    <link rel="canonical" href="https://www.library-management.com/manage-books/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=12' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-books%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-books%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<script>
    $(function () {
        getBookDetails();
    });
    function getBookDetails() {
        $.ajax({
            type: "GET",
            url: "api/myapi/getBookNames",
            contentType: "application/json; charset=utf-8",
            data: {},
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
        for (var i = 0; i < data.length; i++) {
            $('#bookDetailsTable').append('<tr><td>' + data[i].isbnCode + '</td><td>' + data[i].bookTitle + '</td><td>' + data[i].bookDescription + '</td><td>' + data[i].bookCategory + '</td><td style="text-align:right">' + data[i].price + '</td><td>' + data[i].qty + '</td><td style="text-align:right">' + data[i].borrowedBookCount + '</td><td><input  type=\'button\' onclick=\'change_Book_Activation("' + data[i].bookID + '")\' value=\'Change Book Details\' /><input  type=\'button\' onclick=\'update_Book("' + data[i].bookID + '")\' value=\'Update Book Details\' /></td>/tr>');
        }
    }
    function change_Book_Activation(bookID) {
        var bookID = bookID;
        window.location.href = "ManageBooksActivation.aspx?bookID=" + bookID;
    }
    function update_Book(bookID) {
        var bookID = bookID;
        window.location.href = "UpdateBook.aspx?bookID=" + bookID;
    }
</script>
<body class="page-template page-template-managebooks page-template-managebooks-php page page-id-12 logged-in hold-transition skin-blue sidebar-mini">
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
                                                <a href="https://www.library-management.com/wp-login.php?action=logout&amp;redirect_to=https%3A%2F%2Fwww.library-management.com&amp;_wpnonce=b335042daa"
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
                    <li class="active">Manage Books</li>
                </ol>
            </section>


            <section class="content" style="min-height: 100%;">


                <div class="box box-default" ng-controller="managementofbooksCtrl">
                    <div class="box-header with-border">
                    </div>

                    <div class="box-body" style="">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="" style="padding-bottom: 7px;">
                                    <form class="form-inline">

                                        <label class="sr-only" for="inlineFormBookId">Book Name</label>
                                        <div class="input-group col-md-6 col-xs-12" style="float: left;">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" class="form-control fix_radius" ng-change="onBookName()"
                                                ng-model="filter_BookName" id="inlineFormBookName"
                                                placeholder="Type Book Name">
                                        </div>


                                        <label class="sr-only" for="inlineFormUserID">ISBN</label>
                                        <div class="input-group col-md-6 col-xs-12">
                                            <div class="input-group-addon fix_radius fix_filter">
                                                <i class="fa fa-filter"
                                                    aria-hidden="true"></i>
                                            </div>
                                            <input type="text" class="form-control fix_radius" ng-change="onISBNChange()"
                                                ng-model="filter_ISBN" id="inlineFormISBN" placeholder="Type ISBN">
                                        </div>


                                    </form>

                                </div>

                                <div class="table-responsive">
                                    <table class="table table-bordered mng_book_cls" id="bookDetailsTable">
                                        <thead>
                                            <tr>
                                                <th style="display: none;">?</th>
                                                <th class="">ISBN</th>
                                                <th class="">Book Name</th>
                                                <th class="book_desc_mng">Book Desc</th>
                                                <th class="book_cat_mng">Category</th>
                                                <th class="book_price_mng">Price</th>
                                                <th class="book_qty_mng">Oty</th>
                                                <th class="book_borr_mng">Borrowed</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tb_managebook_container"></tbody>
                                    </table>
                                </div>

                                <div class="modal fade" id="editBookData" tabindex="-1" role="dialog"
                                    aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog lg-modal" style="width: 40%;">
                                        <div class="modal-content fix_radius">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                                </button>
                                                <h3 class="modal-title" id="lineModalLabel">Manage Books</h3>
                                            </div>
                                            <div class="modal-body" style="padding-top: 10px; padding-right: 35px;">
                                                <div class="row">
                                                    <div class="holder_sub_book_lst">
                                                        <table class="table table-bordered tbl_book_lst"
                                                            style="margin-left: 2%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td colspan="3">Note : These are all the unique book ids of this
                                                                        book called <b>{{selected_Book_Name}}</b> you can write them
                                                                        behind the books so as to identify them.These ids will be
                                                                        needed when you are issuing the book to users.If any books
                                                                        is lost you can deactivate it.
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <input type="text" ng-model="search.BookId"
                                                                            placeholder="Enter Book Id"
                                                                            class="form-control fix_radius"
                                                                            style="width: 100%; float: left;">
                                                                        <div style="float: right; width: 23%;">
                                                                        </div>
                                                                    </td>
                                                                </tr>

                                                                <tr ng-repeat="x in sub_book_data | filter:search">
                                                                    <td style="text-align: center; padding: 14px;">{{x.BookId}}</td>
                                                                    <td style="text-align: center; padding: 12px;">{{selected_Book_Name}}
                                                                    </td>
                                                                    <td style="text-align: center; padding: 7px;">
                                                                        <toggle ng-model="demo.toggleValue[x.BookId]"
                                                                            ng-init="demo.toggleValue[x.BookId] = (x.Active=='0') ? false : true"
                                                                            ng-change="onBookchanged(x)" on="Active"
                                                                            off="Deactive"></toggle>
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


                                <div class="modal fade" id="editSelectedBookData" tabindex="-1" role="dialog"
                                    aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog lg-modal" style="width: 40%;">
                                        <div class="modal-content fix_radius">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                                </button>
                                                <h3 class="modal-title" id="lineModalLabel">Edit Books</h3>
                                            </div>
                                            <div class="modal-body" style="padding-top: 10px; padding-right: 35px;">
                                                <div class="row">
                                                    <div class="holder_sub_book_lst">
                                                        <form id="frmUpdateBookDetails">
                                                            <input type="hidden" name="action"
                                                                value="update_specific_parent_book">
                                                            <input type="hidden" name="selected_book_id" id="selected_book_id">


                                                            <table class="table table-bordered tbl_book_lst"
                                                                style="margin-left: 2%;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <input type="text"
                                                                                placeholder="Enter Book Title"
                                                                                name="selected_book_title"
                                                                                id="selected_book_title"
                                                                                ng-model="selected_book_title"
                                                                                class="form-control fix_radius">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <input type="text" placeholder="Enter Publisher"
                                                                                name="selected_book_publisher"
                                                                                id="selected_book_publisher"
                                                                                ng-model="selected_book_publisher"
                                                                                class="form-control fix_radius">
                                                                        </td>

                                                                        <td>
                                                                            <input type="text" name="select_book_category"
                                                                                id="select_book_category"
                                                                                placeholder="Enter Book Category" tooltips
                                                                                tooltip-template="This can be used to group books."
                                                                                tooltip-side="bottom"
                                                                                ng-model="select_book_category"
                                                                                class="form-control fix_radius">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <input type="text" id="select_book_author"
                                                                                name="select_book_author"
                                                                                placeholder="Enter Author"
                                                                                ng-model="select_book_author"
                                                                                class="form-control fix_radius">
                                                                        </td>
                                                                        <td>
                                                                            <input type="text" name="select_book_price"
                                                                                id="select_book_price" placeholder="Enter Price"
                                                                                ng-model="select_book_price"
                                                                                class="form-control fix_radius">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <!--                                                                <input type="text" name="select_book_img"-->
                                                                            <!--                                                                       id="select_book_img" tooltips-->
                                                                            <!--                                                                       tooltip-template="Enter Image Url."-->
                                                                            <!--                                                                       tooltip-side="bottom"-->
                                                                            <!--                                                                       placeholder="Enter Image Url"-->
                                                                            <!--                                                                       ng-model="select_book_img"-->
                                                                            <!--                                                                       class="form-control fix_radius">-->
                                                                            <input type="hidden" name="select_book_img" id="select_book_img" value="" />
                                                                            <input type="file" tooltips
                                                                                tooltip-template="Upload Book Cover"
                                                                                tooltip-side="bottom" name="book_img_upload" class="form-control"
                                                                                id="book_img_upload">
                                                                        </td>

                                                                        <td>
                                                                            <!--                                                                <input type="text" name="select_book_preview_lnk"-->
                                                                            <!--                                                                       id="select_book_preview_lnk"-->
                                                                            <!--                                                                       placeholder="Enter Book Pdf Url Or Attach any Document File from Google Drive"-->
                                                                            <!--                                                                       tooltips-->
                                                                            <!--                                                                       tooltip-template="Enter Book Pdf Url Or Attach any Document File from Google Drive."-->
                                                                            <!--                                                                       tooltip-side="bottom"-->
                                                                            <!--                                                                       ng-model="select_book_preview_lnk"-->
                                                                            <!--                                                                       class="form-control fix_radius">-->
                                                                            <input type="hidden" name="select_book_preview_lnk" value=""
                                                                                id="select_book_preview_lnk" />
                                                                            <input type="file" tooltips
                                                                                tooltip-template="Upload Book Preview pdf file"
                                                                                tooltip-side="bottom" class="form-control" name="book_pdf_upload"
                                                                                id="book_pdf_upload">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <input type="text" name="select_book_external_url"
                                                                                id="select_book_external_url"
                                                                                placeholder="Enter any external url if you want user to redirect to it when book is clicked on front page"
                                                                                tooltips
                                                                                tooltip-template="Enter any external url if you want user to redirect to it when book is clicked on front page"
                                                                                tooltip-side="bottom"
                                                                                ng-model="select_book_external_url"
                                                                                class="form-control fix_radius">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <textarea rows="5" name="selected_book_desc"
                                                                                id="selected_book_desc"
                                                                                ng-model="selected_book_desc"
                                                                                class="form-control fix_radius"
                                                                                placeholder="Note if any"></textarea>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <div style="float: right;">
                                                                                <button class="btn btn-primary fix_radius pmd-ripple-effect"
                                                                                    ng-click="btn_updateBookInfo()">
                                                                                    Update Book
                                                                                    Details
                                                                                </button>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>

                                                            </table>
                                                        </form>

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

<a id="btnSearch" href="javascript:show_payment();"
    style="font-size: 12px!important; color: #fff!important; background-color: #0c0c0c !important; border-radius: 50%; border: none; display: inline-block; outline: 0; padding: 8px 16px; vertical-align: middle; overflow: hidden; text-decoration: none; color: inherit; background-color: inherit; text-align: center; cursor: pointer; white-space: nowrap; bottom: 7%; z-index: 5000; right: 2%; position: fixed; border-radius: 50px !important;">+
    Buy @ (USD) $ 20 /-.
</a>

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


