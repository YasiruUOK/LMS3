<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherSettings.aspx.cs" Inherits="LMS.OtherSettings" %>

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
    <script type='text/javascript' src='https://www.library-management.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
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
var myAjax = {"ajaxurl":"https:\/\/www.library-management.com\/wp-admin\/admin-ajax.php","loader_path":"https:\/\/www.library-management.com\/wp-content\/themes\/library","boostrap_loc":"https:\/\/www.library-management.com\/wp-content\/themes\/library\/css\/bootstrap.min.css","number_of_row":"25","defined_fine":"10"};
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
    <link rel="canonical" href="https://www.library-management.com/other-settings/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=20' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fother-settings%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fother-settings%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body class="page-template page-template-othersettings page-template-othersettings-php page page-id-20 logged-in hold-transition skin-blue sidebar-mini">
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
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/dashboard/','') }">
                            <a >
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>

                            </a>
                        </li>


                        <li id="MyPorfileMain" class="treeview">
                            <a href="#">
                                <i class="fa fa-gift"></i> <span>My Profile</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/change-password/','MyPorfileMain') }">
                                    <a href="https://www.library-management.com/change-password/">
                                        <i class="fa fa-circle-o"></i> Change
                                        Password
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/update-profile/','MyPorfileMain') }">
                                    <a href="https://www.library-management.com/update-profile/">
                                        <i class="fa fa-circle-o"></i> Update
                                        Details
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li id="ManageBookMain" class="treeview">
                            <a href="#">
                                <i class="fa fa-gift"></i> <span>Manage Books</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-book/','ManageBookMain') }">
                                    <a href="https://www.library-management.com/add-book/">
                                        <i class="fa fa-circle-o"></i> Add
                                        Books
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-books/','ManageBookMain') }">
                                    <a href="https://www.library-management.com/manage-books/">
                                        <i class="fa fa-circle-o"></i> View
                                        Books
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <%--<li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-fines/','') }">
                            <a href="https://www.library-management.com/manage-fines/">
                                <i class="fa fa-money"></i> <span>Manage Fines</span>

                            </a>
                        </li>--%>
                        <li ng-show="true" ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-online-dues/','') }">
                            <a href="https://www.library-management.com/manage-online-dues/">
                                <i class="fa fa-money"></i> <span>Manage Online Paid Dues</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/issue-books/','') }">
                            <a href="https://www.library-management.com/issue-books/">
                                <i class="fa fa-folder-open-o"></i> <span> Issue Books</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-issued-books/','') }">
                            <a href="https://www.library-management.com/manage-issued-books/">
                                <i class="fa fa-list"></i> <span> View All Issued Books</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-return-archive/','') }">
                            <a href="https://www.library-management.com/manage-return-archive/">
                                <i class="fa fa-clock-o "></i> <span> View All Archive Books</span>

                            </a>
                        </li>


                        <li id="MainUserMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i> <span>Manage Users</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-user/','MainUserMenu') }">
                                    <a href="https://www.library-management.com/add-user/">
                                        <i class="fa fa-circle-o"></i> Add
                                        User
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-users/','MainUserMenu') }">
                                    <a href="https://www.library-management.com/manage-users/">
                                        <i class="fa fa-circle-o"></i> View
                                        All Users
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li id="SettingMainMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-sliders"></i> <span>Manage Settings</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-course/','SettingMainMenu') }">
                                    <a href="https://www.library-management.com/manage-course/">
                                        <i class="fa fa-circle-o"></i> Manage
                                        Courses
                                    </a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-years/','SettingMainMenu') }">
                                    <a href="https://www.library-management.com/manage-years/"><i class="fa fa-circle-o"></i> Manage Years</a>
                                </li>
                            </ul>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/view-request-book-data/','') }">
                            <a href="https://www.library-management.com/view-request-book-data/">
                                <i class="fa fa-heart-o "></i> <span> View Request Book Data</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-slides/','') }">
                            <a href="https://www.library-management.com/manage-slides/">
                                <i class="fa fa-television"></i> <span> Manage Slides</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-institution/','') }">
                            <a href="https://www.library-management.com/manage-institution/">
                                <i class="fa fa-sliders "></i> <span> Institution Setup</span>

                            </a>
                        </li>


                        <li id="ManagePageMainMenu" class="treeview">
                            <a href="#">
                                <i class="fa fa-pagelines"></i> <span>Manage Pages</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ng-class="{ active: isActive('https://www.library-management.com/add-page/','ManagePageMainMenu') }">
                                    <a href="https://www.library-management.com/add-page/"><i class="fa fa-circle-o"></i> Add Page</a>
                                </li>
                                <li ng-class="{ active: isActive('https://www.library-management.com/manage-pages/','ManagePageMainMenu') }">
                                    <a href="https://www.library-management.com/manage-pages/"><i class="fa fa-circle-o"></i> List All Page</a>
                                </li>
                            </ul>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/other-settings/','') }">
                            <a href="https://www.library-management.com/other-settings/">
                                <i class="fa fa-gears"></i> <span>Other Settings</span>

                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/update-control/','') }">
                            <a href="https://www.library-management.com/update-control/">
                                <i class="fa fa-wrench "></i> <span> Update Website</span>

                            </a>
                        </li>
                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/report-bugs/','') }">
                            <a href="https://www.library-management.com/report-bugs/">
                                <i class="fa fa-bug"></i> <span>Report Bugs</span>

                            </a>
                        </li>
                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/about-software/','') }">
                            <a href="https://www.library-management.com/about-software/">
                                <i class="fa fa-clock-o "></i> <span> About Software</span>
                            </a>
                        </li>


                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
        </div>
        <div class="content-wrapper">

            <section class="content-header">
                <h1>
                    Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Other Settings</li>
                </ol>
            </section>


            <section class="content" style="min-height: 100%;">
                <div class="">
                    <div class="box-header with-border">

                    </div>

                    <div class="box-body" style="">
                        <div class="row">

                            <div class="col-md-12" ng-controller="otherSettingsCtrl">
                                <div class="tab-content shadow">
                                    <div class="tab-pane active">
                                        <div class=" panel panel-custom">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <strong>Update Details</strong>
                                                </div>
                                            </div>
                                            <div class="panel-body form-horizontal">
                                                <form class="form-horizontal" id="lib_manage_other_seting">


                                                    <input type="hidden" name="action" value="other_settings">


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            [MSG91.com]Message
                                                            Api Key
                                                        </label>

                                                        <input name="message_api_key" id="message_api_key"
                                                               placeholder="Message Api key [https://msg91.com/]" class="form-control"
                                                               value="" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            [ New
                                                            Book ]People To Approve
                                                        </label>

                                                        <input name="people_to_approve" id="people_to_approve" placeholder="25"
                                                               class="form-control" value="30" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Nos
                                                            of books to show
                                                        </label>

                                                        <input name="nos_of_book_to_show" id="nos_of_book_to_show" tooltips
                                                               tooltip-template="Nos of books to show for each category in front page"
                                                               tooltip-side="bottom" placeholder="" class="form-control"
                                                               value="20" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>Limit Issue Books for students</label>

                                                        <input name="limit_issue_book" id="limit_issue_book" tooltips
                                                               tooltip-template="Limit the nos of books to issed for students."
                                                               tooltip-side="bottom" placeholder="" class="form-control"
                                                               value="2" type="text">

                                                    </div>
                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>Limit Issue Books for Teachers</label>
                                                        <input name="limit_issue_book_teachers" id="limit_issue_book_teachers" tooltips
                                                               tooltip-template="Limit the nos of books to issed for teachers. - For future versions"
                                                               class="form-control"
                                                               value="5" type="text" readonly>

                                                    </div>
                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Disable
                                                            Wordpress DashBoard
                                                        </label>

                                                        <input name="hide_wordpress_dashboard" id="hide_wordpress_dashboard" tooltips
                                                               tooltip-template="Type yes or no." tooltip-side="bottom"
                                                               placeholder="yes or no" class="form-control"
                                                               value="no" type="text">

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>Currency</label>

                                                        <input name="local_currency" id="local_currency"
                                                               placeholder="Enter your local currency" class="form-control"
                                                               value="Rs." type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Set a
                                                            fallback password
                                                        </label>

                                                        <input name="default_password" id="default_password" placeholder="123456" tooltips
                                                               tooltip-template="Set a default password.This password will be used if you are reseting the password.If nothing is set the default password would be '123456'"
                                                               tooltip-side="bottom" placeholder="" class="form-control"
                                                               value="123456" type="text">

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Nos
                                                            of menu to show
                                                        </label>

                                                        <input name="nos_of_menu_to_show" id="nos_of_menu_to_show" tooltips
                                                               tooltip-template="Nos of menu to show in the front page before wrapping."
                                                               tooltip-side="bottom" placeholder="" class="form-control"
                                                               value="5" type="text">

                                                    </div>
                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Theme Color
                                                        </label>

                                                        <input name="custom_theme_color" id="custom_theme_color" class="form-control"
                                                               value="#009688" type="color">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Logo Css
                                                        </label>

                                                        <input name="logo_css" id="logo_css" class="form-control"
                                                               value="width: 53px;float: left;margin-left: 5px;margin-top: 3px;" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Width For Custom Pages
                                                        </label>
                                                        <input name="width_custom_pages" id="width_custom_pages" class="form-control"
                                                               value="80%" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Define Fine Rate
                                                        </label>
                                                        <input name="fine_rate" id="fine_rate" class="form-control"
                                                               value="10" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            CCavenue Merchant Code/Id
                                                        </label>
                                                        <input name="merchant_code" id="merchant_code" class="form-control"
                                                               value="123456" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Payment Page Notice
                                                        </label>
                                                        <input name="payment_page_notice" id="payment_page_notice" class="form-control"
                                                               value="You have not submitted the book.After the submission the admin will approved the payment.Make sure to submit within 1-2 days." type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            CCavenue Processing Currency
                                                        </label>
                                                        <input name="payment_currency_code" id="payment_currency_code" class="form-control"
                                                               value="INR" placeholder="INR | USD | SGD | GBP | EUR" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            CCavenue Working Key
                                                        </label>
                                                        <input name="working_key" id="working_key" class="form-control"
                                                               value="121212121212121212121212121212121212" type="text">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            CCavenue Access Code
                                                        </label>
                                                        <input name="access_code" id="access_code" class="form-control"
                                                               value="ABCDEFGHIG" type="text">

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Add Main
                                                            Notice
                                                        </label>


                                                        <textarea name="quick_notice" id="quick_notice"
                                                                  placeholder="Enter your notice to show in the front page."
                                                                  class="form-control" rows="5">This is the front end of the Library Management System. This demo is fully functional and will be as it is when we provide the source code.More details are given below.This site resets itself after every 30 min so you could face logout sometimes.You can login & try the backend dashboard.</textarea>


                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">

                                                        <label>
                                                            Add You
                                                            States {Seperated By Comma}
                                                        </label>

                                                        <textarea name="custom_states" id="custom_states" placeholder="Mahrastra,Delhi"
                                                                  class="form-control" rows="5">Andaman and Nicobar Islands,Andhra Pradesh,Assam,Bihar,Chandigarh,Dadra and Nagar Haveli,Jammu and Kashmir,Nagaland,Pondicherry</textarea>

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Add
                                                            Css Style Front Page
                                                        </label>
                                                        <textarea name="custom_css_front_page" id="custom_css_front_page" placeholder=""
                                                                  class="form-control"
                                                                  rows="5"></textarea>

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Instructions
                                                            for users id card {seperate by comma}
                                                        </label>

                                                        <textarea name="inst_in_cards" id="inst_in_cards"
                                                                  placeholder="Enter the instruction seperated by commas.Only 7 instruction are supported."
                                                                  class="form-control" rows="5">The holder of this card is register person of Demo University.,By this registeration the holder agreeds to abide by the Rules and Regulation of the Institute.,The Card is for personal use and it is not transfareble., Finder of the lost card are asked to return them to the Program office at the above address.,Only 2 books can be borrowed on this card.,Rs 10 will be be charged if this card is lost.,Book will be issued only on presense of this card.</textarea>

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Enable Online Due Payment
                                                        </label>
                                                        <input name="do_online_payment" id="do_online_payment" class="form-control"
                                                               value="true" type="text" placeholder="true or false"
                                                               tooltips
                                                               tooltip-template="If you set it to true online due system will start working but make sure you enter your payement gateway details."
                                                               tooltip-side="bottom">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>
                                                            Enable Email Sending
                                                        </label>
                                                        <input name="email_sending_process" id="email_sending_process" class="form-control"
                                                               value="false" type="text" placeholder="true or false"
                                                               tooltips
                                                               tooltip-template="If you set it to true email will be send when you issue or return the book."
                                                               tooltip-side="bottom">

                                                    </div>


                                                    <div class="form-group mb0 col-sm-12">
                                                        <label>
                                                            Waiting Approval Msg
                                                        </label>
                                                        <input name="waiting_approval_msg" id="waiting_approval_msg" class="form-control"
                                                               value="You have not submitted the book.After the submission the admin will approved the payment.Make sure to submit within 1-2 days." type="text" placeholder=""
                                                               tooltips
                                                               tooltip-template="This will be a help notification which the users sees when he completes the payment.Here you could mention any instructions that he needs to follow after the payment process."
                                                               tooltip-side="bottom">

                                                    </div>

                                                    <div class="form-group mb0 col-sm-12">
                                                        <label>
                                                            Front Page Statement
                                                        </label>
                                                        <input name="front_page_s1" id="front_page_s1" class="form-control"
                                                               value="Our Library Books" type="text" placeholder="Our Library Books">

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>Email Template For Issued Books</label>

                                                        <textarea name="email_tmp_issued_book" id="email_tmp_issued_book"
                                                                  placeholder="Hii , {username} &#10;Book Name : {bookname} &#10;Book Id : {bookid} &#10;Has been issued to you successfully.&#10;Thank You"
                                                                  class="form-control" rows="5">Hii {username} , 
Book Name : {bookname} 
Book Id : {bookid} 
Has been issued to you successfully. 
Thank You</textarea>

                                                    </div>


                                                    <div class="form-group mb0 col-sm-6">
                                                        <label>Email Template For Returned Books</label>

                                                        <textarea name="email_tmp_returned_book" id="email_tmp_returned_book"
                                                                  placeholder="Hii , {username} &#10;Book Name : {bookname} &#10;Book Id : {bookid} &#10;Has been returned to us successfully.&#10;Thank You"
                                                                  class="form-control" rows="5">Hii {username}, 
Book Name : {bookname} 
Book Id : {bookid} 
Has been returned to us successfully. 
Thank You</textarea>

                                                    </div>


                                                    <div class="form-group mb0 col-sm-12">


                                                        <button ng-click="saveSettings()"
                                                                class="btn btn-primary fix_radius pull-right pmd-ripple-effect">
                                                            <span class="fa fa-floppy-o"></span>&nbsp;Save
                                                        </button>
                                                    </div>


                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-91268321-2');
</script>

<!-- Adding Javascript -->
<script type="text/javascript">
  jQuery(document).ready(function ($) {


  });
</script>	
