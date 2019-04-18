<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageInstitution.aspx.cs" Inherits="LMS.ManageInstitution" %>

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
    <title>Manage Institution &#8211; LMS a WordPress Theme</title>
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
    <link rel="canonical" href="https://www.library-management.com/manage-institution/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=15' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-institution%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fmanage-institution%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body class="page-template page-template-institution page-template-institution-php page page-id-15 logged-in hold-transition skin-blue sidebar-mini">
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
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/dashboard/','') }">
                            <a href="https://www.library-management.com/dashboard/">
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

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-fines/','') }">
                            <a href="https://www.library-management.com/manage-fines/">
                                <i class="fa fa-money"></i> <span>Manage Fines</span>

                            </a>
                        </li>
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
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Update Institution Details</li>
                </ol>
            </section>


            <section class="content" style="min-height: 100%;">
                <div class="row" ng-controller="institutionSetupCtrl">
                    <form class="form-horizontal" method="post" id="lib_manage_inst_form_profile">
                        <div class="col-sm-3" style="background-color: white;padding-bottom: 15px;">
                            <img id="img_profile_pic_temp"
                                 ng-src="{{'' || 'https://www.library-management.com/wp-content/themes/library/img/default_university.png'}}"
                                 class="img-responsive" alt="Institution Logo" style="    margin: 0 auto;">

                            <div style="padding-top: 10px;">
                                <input type="file" name="upload_image" id="upload_image" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <div class="tab-content shadow" style="border: 0;padding:0;">
                                <div class="tab-pane active">
                                    <div class="panel panel-custom">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <strong>Update Institution Profile</strong>
                                            </div>
                                        </div>
                                        <div class="panel-body form-horizontal">

                                            <input type="hidden" name="action" value="saveInstitutionProfile">
                                            <input type="hidden" name="photo_id" id="attach_photo_id"
                                                   value="">
                                            <div class="form-group mb0 col-sm-12">

                                                <label>Institution Name</label>

                                                <input name="inst_name" id="inst_name" value="Demo University"
                                                       placeholder="Institution Name" class="form-control" type="text">

                                            </div>

                                            <div class="form-group mb0 col-sm-12">
                                                <label>Institution Desc </label>
                                                <textarea name="inst_frnt_desc" id="inst_frnt_desc"
                                                          placeholder="Instituion Desc" class="form-control"
                                                          rows="4">Library Management System is carefully developed for easy management of any type of library. It’s actually a virtual version of a real library. It?s a web based system where you can manage books of different categories, manage users & manage issue/return of books easily.Issuing a book to a member is just a matter of a click.LMS will be an efficient and intelligent companion for managing your library.</textarea>

                                            </div>

                                            <div class="form-group mb0 col-sm-6">
                                                <label>Contact Person</label>
                                                <input name="inst_cont_name" id="inst_cont_name"
                                                       value="John Dsouza" placeholder="Contact Name"
                                                       class="form-control" type="text">


                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>E-Mail </label>
                                                <input name="inst_email" id="inst_email" value="lms_dev@outlook.com"
                                                       placeholder="E-Mail Address" class="form-control" type="text">


                                            </div>

                                            <div class="form-group mb0 col-sm-6">
                                                <label>Website</label>
                                                <input name="inst_website" id="inst_website"
                                                       value="http://mu.ac.in" placeholder="Website or domain name"
                                                       class="form-control" type="text">


                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>Phone </label>
                                                <input name="inst_phone" id="inst_phone" value="022-6500706"
                                                       placeholder="9876543210" class="form-control" type="text">
                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>Fax</label>
                                                <input name="inst_fax" id="inst_fax" placeholder="Fax Number"
                                                       value="12457890" class="form-control" type="text">
                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>Address</label>
                                                <input name="inst_address" id="inst_address" placeholder="Address"
                                                       class="form-control" value="Registrar University of Mumbai M.G. Road Fort Mumbai-400032" type="text">

                                            </div>

                                            <div class="form-group mb0 col-sm-6">
                                                <label>Gmap Link&nbsp;<a href="https://www.youtube.com/watch?v=Xyj3gHyRAZI" target="_blank"><i class="fa fa-question-circle" aria-hidden="true"></i></a></label>
                                                <input name="inst_gmap" id="inst_gmap" placeholder="GMap Link"
                                                       class="form-control" value="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d30166.656054254217!2d72.8384864!3d19.0711224!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8e35b9b563b0x840ba7d97d4c0bd6!2sMumbai+University+(MU)!5e0!3m2!1sen!2sin!4v1518682510294" type="text">
                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>Zip</label>
                                                <input name="inst_zip" id="inst_zip" value="100540"
                                                       placeholder="Zip Code" class="form-control" type="text">
                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>City </label>
                                                <input name="inst_city" id="inst_city" value="Mumbai"
                                                       placeholder="City" class="form-control" type="text">
                                            </div>


                                            <div class="form-group mb0 col-sm-6">
                                                <label>State</label>
                                                <select name="inst_state" id="inst_state" class="form-control selectpicker fix_radius">
                                                    <option value="">------------Select State------------</option>
                                                    <option value='Andaman and Nicobar Islands'>Andaman and Nicobar Islands</option>
                                                    <option value='Andhra Pradesh'>Andhra Pradesh</option>
                                                    <option value='Assam'>Assam</option>
                                                    <option value='Bihar'>Bihar</option>
                                                    <option value='Chandigarh'>Chandigarh</option>
                                                    <option value='Dadra and Nagar Haveli'>Dadra and Nagar Haveli</option>
                                                    <option value='Jammu and Kashmir'>Jammu and Kashmir</option>
                                                    <option value='Nagaland'>Nagaland</option>
                                                    <option value='Pondicherry'>Pondicherry</option>
                                                </select>


                                            </div>


                                            <div class="form-group mb0 col-sm-12">

                                                <label>Google Title</label>
                                                <input name="inst_meta_title" id="inst_meta_title"
                                                       value="Library Management Software Download MCA|BCA|BSCIT|BE|COMPUTERS|BTECH Documentations" placeholder="Meta Title"
                                                       class="form-control" type="text">

                                            </div>

                                            <div class="form-group mb0 col-sm-6">
                                                <label> Google Desc</label>
                                                <textarea name="inst_meta_desc" id="inst_meta_desc" placeholder="Meta Desc"
                                                          class="form-control"
                                                          rows="5">Library Management Software LMS which is a project that is build on Angular Js & PHP using wordpress basic functions.Grab the offer now @ $10 & Download the source code.This project can be used as college project as well as can be put to live use.One click install for newbie users.</textarea>

                                            </div>

                                            <div class="form-group mb0 col-sm-6">
                                                <label> Google Keywords</label>

                                                <textarea name="inst_meta_keyword" id="inst_meta_keyword"
                                                          placeholder="Meta Keywords Seperate it by comma"
                                                          class="form-control"
                                                          rows="5"></textarea>
                                            </div>


                                            <div class="form-group mb0 col-sm-12">

                                                <button ng-click="saveInstitution()"
                                                        class="btn btn-warning pull-right fix_radius pmd-ripple-effect">
                                                    <span class="fa fa-floppy-o"></span> Save
                                                </button>

                                            </div>


                                        </div>
                                    </div>
                                </div>


                            </div>
                    </form>
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
   style="font-size: 12px!important;color: #fff!important;background-color: #0c0c0c !important;border-radius: 50%;border: none;display: inline-block;outline: 0;padding: 8px 16px;vertical-align: middle;overflow: hidden;text-decoration: none;color: inherit;background-color: inherit;text-align: center;cursor: pointer;white-space: nowrap;bottom: 7%;z-index: 5000;right: 2%;position: fixed;border-radius: 50px !important;">
    +
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
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-91268321-2');
</script>


<script type="text/javascript">
  jQuery(document).ready(function ($) {
    $("#inst_state").val("Bihar");
  });
</script>	
