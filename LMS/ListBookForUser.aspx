<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBookForUser.aspx.cs" Inherits="LMS.ListBookForUser" %>

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
    <title>List Book For User &#8211; LMS a WordPress Theme</title>
<link rel='dns-prefetch' href='//s.w.org' />
<link rel='stylesheet' id='font_awesome-css'  href='https://www.library-management.com/wp-content/themes/library/css/font-awesome.min.css?ver=4.9.8' type='text/css' media='all' />
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
<link rel="canonical" href="https://www.library-management.com/list-book-for-user/" />
<link rel='shortlink' href='https://www.library-management.com/?p=11' />
<link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Flist-book-for-user%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Flist-book-for-user%2F&#038;format=xml" />
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
        });
        function getUserID() {
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
<body class="page-template page-template-booklistforuser page-template-booklistforuser-php page page-id-11 logged-in hold-transition skin-blue sidebar-mini" >
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
                  <a href="https://www.library-management.com/users-profile-page/" style="height: 37px;"
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
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>


      <ul class="sidebar-menu">

        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/list-book-for-user/','') }">
          <a href="https://www.library-management.com/list-book-for-user/">
            <i class="fa fa-list"></i> <span> Dashboard</span>
          </a>
        </li>
        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/change-password/','') }">
          <a href="https://www.library-management.com/change-password/">
            <i class="fa fa-graduation-cap "></i> <span>Change Password</span>

          </a>
        </li>


        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-issued-book-for-users/','') }">
          <a href="https://www.library-management.com/manage-issued-book-for-users/">
            <i class="fa fa-list"></i> <span> View Issued Books</span>
          </a>
        </li>

        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-return-archives-user/','') }">
          <a href="https://www.library-management.com/manage-return-archives-user/">
            <i class="fa fa-list"></i> <span> View All Archive Books</span>
          </a>
        </li>

        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/request-book/','') }">
          <a href="https://www.library-management.com/request-book/">
            <i class="fa fa-list"></i> <span> Submit Book Request</span>
          </a>
        </li>

        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/about-software/','') }">
          <a href="https://www.library-management.com/about-software/">
            <i class="fa fa-clock-o "></i> <span> About Software</span>
          </a>
        </li>


      </ul>
    </section>

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
            <li class="active">Book List For User</li>
        </ol>
    </section>


    <section class="content">


        <div class="box box-default" ng-controller="ListofbooksUserCtrl">
            <div class="box-header with-border">


            </div>

            <div class="box-body" style="">
                <div class="row">
                    <div class="col-md-12">


                        <div class="" style="padding: 10px;">
                            <form class="form-inline">

                                <label class="sr-only" for="inlineFormBookId">Book Name</label>
                                <div class="input-group col-md-6" style="float: left;">
                                    <div class="input-group-addon fix_radius fix_filter"><i class="fa fa-filter"
                                                                                            aria-hidden="true"></i>
                                    </div>
                                    <input type="text" class="form-control fix_radius" ng-change="onBookName()"
                                           ng-model="filter_BookName" id="inlineFormBookName"
                                           placeholder="Type Book Name">
                                </div>


                                <label class="sr-only" for="inlineFormUserID">ISBN</label>
                                <div class="input-group col-md-6">
                                    <div class="input-group-addon fix_radius fix_filter"><i class="fa fa-filter"
                                                                                            aria-hidden="true"></i>
                                    </div>
                                    <input type="text" class="form-control fix_radius" ng-change="onISBNChange()"
                                           ng-model="filter_ISBN" id="inlineFormISBN" placeholder="Type ISBN">
                                </div>


                            </form>

                        </div>


                        <table class="table table-bordered table-striped"
                               style="font-size: small; margin-bottom: 0px;   padding: 10px;">
                            <thead>
                            <tr>
                                <th style="display:none;">?</th>
                                <th class="" style="width: 120px;">ISBN</th>
                                <th class="" style="width: 155px;">Book Name</th>
                                <th class="" style="width: 270px;">Book Desc</th>
                                <th class="">Category</th>
                                <th class="">Price</th>
                                <th class="">Oty</th>
                                <th class="">Borrowed</th>

                            </tr>
                            </thead>
                            <tbody id="tb_managebook_container">

                            </tbody>
                        </table>


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
     style="font-size: 12px!important;color: #fff!important;background-color: #0c0c0c !important;border-radius: 50%;border: none;display: inline-block;outline: 0;padding: 8px 16px;vertical-align: middle;overflow: hidden;text-decoration: none;color: inherit;background-color: inherit;text-align: center;cursor: pointer;white-space: nowrap;bottom: 7%;z-index: 5000;right: 2%;position: fixed;border-radius: 50px !important;">+
    Buy @ (USD) $ 20 /-.</a>

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
    
	
