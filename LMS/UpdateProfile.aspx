<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="LMS.UpdateProfile" %>

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
<link rel='stylesheet' id='wp-block-library-css'  href='https://www.library-management.com/wp-includes/css/dist/block-library/style.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='font_awesome-css'  href='https://www.library-management.com/wp-content/themes/library/css/font-awesome.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css'  href='https://www.library-management.com/wp-content/themes/library/css/bootstrap.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='slick-css'  href='https://www.library-management.com/wp-content/themes/library/css/slick.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='slick_theme-css'  href='https://www.library-management.com/wp-content/themes/library/css/slick-theme.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='button-css'  href='https://www.library-management.com/wp-content/themes/library/css/button.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='adminLTE-css'  href='https://www.library-management.com/wp-content/themes/library/css/AdminLTE.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='skin-css'  href='https://www.library-management.com/wp-content/themes/library/css/_all-skins.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='iziToastCss-css'  href='https://www.library-management.com/wp-content/themes/library/css/iziToast.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='tooltipcss-css'  href='https://www.library-management.com/wp-content/themes/library/css/angular-tooltips.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='datetimepickerCss-css'  href='https://www.library-management.com/wp-content/themes/library/css/jquery.datetimepicker.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='angular_bootstrap_toggle_css-css'  href='https://www.library-management.com/wp-content/themes/library/css/angular-bootstrap-toggle.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='datatable_css-css'  href='https://www.library-management.com/wp-content/themes/library/css/dataTables.bootstrap.min.css?ver=5.2.2' type='text/css' media='all' />
<link rel='stylesheet' id='mainstyle-css'  href='https://www.library-management.com/wp-content/themes/library/style.css?ver=5.2.2' type='text/css' media='all' />
<script type='text/javascript' src='https://www.library-management.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/bootstrap.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery-ui.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/slick.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ripple-effect.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.validate.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular-animate.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.numeric.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/iziToast.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular-tooltips.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.datetimepicker.full.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.datetimepicker.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/app.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.slides.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/webcam.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ng-camera.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/canvasjs.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/angular-bootstrap-toggle.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/bootbox.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.blockUI.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/jquery.dataTables.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/dataTables.bootstrap.min.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/tinymce/tinymce.min.js?ver=5.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var myAjax = {"ajaxurl":"https:\/\/www.library-management.com\/wp-admin\/admin-ajax.php","loader_path":"https:\/\/www.library-management.com\/wp-content\/themes\/library","boostrap_loc":"https:\/\/www.library-management.com\/wp-content\/themes\/library\/css\/bootstrap.min.css","number_of_row":"25","defined_fine":"10"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/custom.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ng-file-upload-shim.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/ng-file-upload.js?ver=5.2.2'></script>
<script type='text/javascript' src='https://www.library-management.com/wp-content/themes/library/js/custom_ang.js?ver=5.2.2'></script>
<link rel='https://api.w.org/' href='https://www.library-management.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.library-management.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.library-management.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.2.2" />
<link rel="canonical" href="https://www.library-management.com/update-profile/" />
<link rel='shortlink' href='https://www.library-management.com/?p=24' />
<link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fupdate-profile%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fupdate-profile%2F&#038;format=xml" />
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  

</head>
<body class="page-template page-template-updateprofile page-template-updateprofile-php page page-id-24 logged-in hold-transition skin-blue sidebar-mini" >
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
              <img
                  ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                  class="user-image" alt="User Image">
              <span class="hidden-xs">John Dsouza</span>
            </a>
            <ul class="dropdown-menu">

              <li class="user-header">
                <img
                    ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
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
                    <a href="https://www.library-management.com/wp-login.php?action=logout&amp;redirect_to=https%3A%2F%2Fwww.library-management.com&amp;_wpnonce=9081e9e1ac"
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
          <img
              ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1-150x150.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
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
              <a href="https://www.library-management.com/change-password/"><i class="fa fa-circle-o"></i> Change
                Password</a></li>
            <li ng-class="{ active: isActive('https://www.library-management.com/update-profile/','MyPorfileMain') }">
              <a href="https://www.library-management.com/update-profile/"><i class="fa fa-circle-o"></i> Update
                Details</a></li>
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
            <li ng-class="{ active: isActive('https://www.library-management.com/add-book/','ManageBookMain') }"><a
                  href="https://www.library-management.com/add-book/"><i class="fa fa-circle-o"></i> Add
                Books</a></li>
            <li ng-class="{ active: isActive('https://www.library-management.com/manage-books/','ManageBookMain') }">
              <a href="https://www.library-management.com/manage-books/"><i class="fa fa-circle-o"></i> View
                Books</a></li>
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
            <li ng-class="{ active: isActive('https://www.library-management.com/add-user/','MainUserMenu') }"><a
                  href="https://www.library-management.com/add-user/"><i class="fa fa-circle-o"></i> Add
                User</a></li>
            <li ng-class="{ active: isActive('https://www.library-management.com/manage-users/','MainUserMenu') }"><a
                  href="https://www.library-management.com/manage-users/"><i class="fa fa-circle-o"></i> View
                All Users</a></li>
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
              <a href="https://www.library-management.com/manage-course/"><i class="fa fa-circle-o"></i> Manage
                Courses</a></li>
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
              <a href="https://www.library-management.com/add-page/"><i class="fa fa-circle-o"></i> Add Page</a></li>
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
      <li class="active">Update My Profile</li>
    </ol>
  </section>

  <section class="content">
    <div class="row">
      <form id="lib_update_profile_form" enctype="multipart/form-data" method="post">
        <div class="col-sm-3">
          <img id="img_profile_pic_temp"
               ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/1.jpg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
               class="img-responsive" width="100%" style="background-color: white;" alt="Admin Profile"
               width="100%">
          <div style="padding-top: 10px;">
            <input type="file" name="upload_image" id="upload_image" class="form-control">
          </div>
        </div>
        <div class="col-sm-9" ng-controller="changeProfileDataCtrl">
          <div class="tab-content shadow" style="border: 0;padding:0;">
            <div class="tab-pane active">
              <div class="panel panel-custom">
                <div class="panel-heading">
                  <div class="panel-title">
                    <strong>Update Details</strong>
                  </div>
                </div>
                <div class="panel-body form-horizontal">
                  <input type="hidden" name="action" value="update_lib_profile">
                  <div class="form-group mb0 col-sm-6">
                    <label>First Name</label>
                    <input name="fname" id="fname" placeholder="First Name" class="form-control"
                           value="John" type="text">
                  </div>


                  <div class="form-group mb0 col-sm-6">
                    <label>Last Name</label>
                    <input name="lname" id="lname" placeholder="Last Name" class="form-control"
                           value="Dsouza" type="text">
                  </div>

                  <div class="form-group mb0 col-sm-6">
                    <label>Email</label>
                    <input name="email" id="email" placeholder="E-Mail Address"
                           value="prnc.jhnsn1@gmail.com" class="form-control" type="text"
                           readonly="readonly">
                  </div>


                  <div class="form-group mb0 col-sm-6">
                    <label>Phone</label>
                    <input name="phone" id="phone" placeholder="9876543210" value="1234567890"
                           class="form-control" type="text">
                  </div>


                  <div class="form-group mb0 col-sm-6">
                    <label>City</label>
                    <input name="city" id="city" placeholder="City" class="form-control"
                           value="Mumbai" type="text">
                  </div>


                  <div class="form-group mb0 col-sm-6">
                    <label>State</label>
                        <select name="state" id="state" class="form-control selectpicker fix_radius">
    <option value="">------------Select State------------</option>
      <option value='Andaman and Nicobar Islands'>Andaman and Nicobar Islands</option><option value='Andhra Pradesh'>Andhra Pradesh</option><option value='Assam'>Assam</option><option value='Bihar'>Bihar</option><option value='Chandigarh'>Chandigarh</option><option value='Dadra and Nagar Haveli'>Dadra and Nagar Haveli</option><option value='Jammu and Kashmir'>Jammu and Kashmir</option><option value='Nagaland'>Nagaland</option><option value='Pondicherry'>Pondicherry</option>  </select>


                      </div>


                  <div class="form-group mb0 col-sm-6">
                    <label>Zip</label>
                    <input name="zip" id="zip" placeholder="Zip Code" value="400400"
                           class="form-control" type="text">
                  </div>

                  <div class="form-group mb0 col-sm-6">
                    <label>Blood Group</label>
                    <input name="blood_group" id="blood_group" placeholder="Blood Group"
                           value="O+ve"
                           class="form-control" type="text">
                  </div>


                  <div class="form-group mb0 col-sm-12">
                    <label>Address</label>
                    <textarea name="address" id="address" row="3" placeholder="Address"
                              class="form-control">Mumbai Mumbai Mumbai</textarea>
                  </div>

                  <div class="form-group mb0 col-sm-12">
                    <button ng-click="updateProfile()"
                            class="btn btn-primary fix_radius pull-right pmd-ripple-effect"><span
                          class="fa fa-floppy-o"></span>&nbsp;Save
                    </button>

                  </div>


                </div>
              </div>
            </div>

          </div>

        </div>
      </form>
    </div>
  </section>
</div>


<script type='text/javascript' src='https://www.library-management.com/wp-includes/js/wp-embed.min.js?ver=5.2.2'></script>


</div>
</body>
</html>

  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-91268321-2"></script>
