<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="LMS.UserProfile" %>

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
    <title>Users Profile Page &#8211; LMS a WordPress Theme</title>
    <link rel='dns-prefetch' href='//s.w.org' />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
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
    <link rel="canonical" href="https://www.library-management.com/users-profile-page/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=22' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fusers-profile-page%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fusers-profile-page%2F&#038;format=xml" />
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
            getUserFullName();
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
                    getLoggedUser();
                },
                failure: function (response) {
                    alert(response.d);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function getLoggedUser() {
            var LoggedUser = mycookie();
            jQuery.ajax({
                type: "GET",
                url: "api/myapi/getLoggedUser",
                data: { LoggedUser: LoggedUser },
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {
                    loadDetails(data);
                },
                failure: function (response) {
                    alert(response.d);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        }
        function loadDetails(data) {
            jQuery.ajax({
                type: "GET",
                url: "api/myapi/getStudentDetails",
                data: { user_id: data },
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {
                    $("#userid").val(data[0].studentID);
                    $("#fname").val(data[0].first_name);
                    $("#lname").val(data[0].last_name);
                    $("#email").val(data[0].email);
                    $("#phone").val(data[0].phone);
                    $("#city").val(data[0].city);
                    $("#state").val(data[0].state);
                    $("#course_name").val(data[0].course_name);
                    $("#year_name").val(data[0].year_name);
                    $("#zip").val(data[0].zip);
                    $("#address").val(data[0].address);
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
                                <i class="fa fa-graduation-cap "></i><span>Change Password</span>

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
                    <li class="active">My Profile</li>
                </ol>
            </section>


            <section class="content">

                <div class="row">
                    <div class="">
                        <div class="box-header with-border">
                        </div>

                        <div class="box-body" style="" ng-controller="UserProfileCtrl">
                            <div class="row">
                                <div class="col-sm-3">

                                    <img ng-src="{{mySrc || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png' }}"
                                        class="img-responsive" style="margin: 0 auto; background-color: white;" width="100%">
                                    <input type="file" name="upload_image" id="upload_image" class="form-control" disabled>
                                </div>
                                <div class="col-sm-9">
                                    <form class="form-horizontal" id="">
                                        <div class="tab-content shadow">
                                            <div class="tab-pane active">
                                                <div class=" panel panel-custom">
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <strong>My Profile</strong>
                                                        </div>
                                                    </div>
                                                    <div class="panel-body form-horizontal">

                                                        <input type="hidden" name="myId" id="myId" value="1001">


                                                        <div class="form-group mb0 col-sm-6">

                                                            <label>User ID</label>

                                                            <input name="userid" id="userid" ng-model="userid" class="form-control"
                                                                type="text" readonly="readonly" value="1001">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">

                                                            <label>
                                                                First
                            Name</label>

                                                            <input name="fname" id="fname" ng-model="fname" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">

                                                            <label>
                                                                Last
                            Name</label>

                                                            <input name="lname" id="lname" ng-model="lname" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">

                                                            <label>Email</label>

                                                            <input name="email" id="email" ng-model="email" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">
                                                            <label>Phone</label>
                                                            <input name="phone" id="phone" ng-model="phone" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">

                                                            <label>City</label>


                                                            <input name="city" id="city" ng-model="city" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">
                                                            <label>State</label>
                                                            <input name="state" id="state" ng-model="state" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">


                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">
                                                            <label>Course Name</label>
                                                            <input name="course_name" id="course_name" ng-model="course_name" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">
                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">
                                                            <label>Year</label>
                                                            <input name="year_name" id="year_name" ng-model="year_name" placeholder="N/A"
                                                                class="form-control" type="text"
                                                                readonly="readonly">


                                                        </div>


                                                        <div class="form-group mb0 col-sm-6">
                                                            <label>Zip</label>
                                                            <input name="zip" id="zip" placeholder="N/A" ng-model="zip" class="form-control"
                                                                type="text" readonly="readonly">
                                                        </div>
                                                        <div class="form-group mb0 col-sm-12">
                                                            <label>Address</label>
                                                            <textarea name="address" id="address" ng-model="address"
                                                                class="form-control" readonly="readonly"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </form>


                                </div>
                            </div>
                        </div>


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




<script async src="https://www.googletagmanager.com/gtag/js?id=UA-91268321-2"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-91268321-2');
</script>

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $("#state").attr("readonly", "readonly");
    });
</script>
