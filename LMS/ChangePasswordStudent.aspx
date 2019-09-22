<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePasswordStudent.aspx.cs" Inherits="LMS.ListBookForUser" %>

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
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="Js/cookiefile.js"></script>
    <script type='text/javascript' src='Js/jquery-migrate.min.js?ver=1.4.1'></script>
    <script type='text/javascript' src='Js/bootstrap.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery-ui.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/slick.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/ripple-effect.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.validate.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/angular.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/angular-animate.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.numeric.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/iziToast.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/angular-tooltips.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.datetimepicker.full.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.datetimepicker.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/app.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.slides.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/webcam.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/ng-camera.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/canvasjs.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/angular-bootstrap-toggle.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/bootbox.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.blockUI.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/jquery.dataTables.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/dataTables.bootstrap.min.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/tinymce/tinymce.min.js?ver=4.9.8'></script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var myAjax = { "ajaxurl": "https:\/\/www.library-management.com\/wp-admin\/admin-ajax.php", "loader_path": "https:\/\/www.library-management.com\/wp-content\/themes\/library", "boostrap_loc": "https:\/\/www.library-management.com\/wp-content\/themes\/library\/css\/bootstrap.min.css", "number_of_row": "25", "defined_fine": "10" };
/* ]]> */
    </script>
    <script type='text/javascript' src='Js/custom.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/ng-file-upload-shim.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/ng-file-upload.js?ver=4.9.8'></script>
    <script type='text/javascript' src='Js/custom_ang.js?ver=4.9.8'></script>
    <%--<link rel='https://api.w.org/' href='https://www.library-management.com/wp-json/' />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.library-management.com/xmlrpc.php?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.library-management.com/wp-includes/wlwmanifest.xml" />--%>
    <meta name="generator" content="WordPress 4.9.8" />
    <%--<link rel="canonical" href="https://www.library-management.com/list-book-for-user/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=11' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Flist-book-for-user%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Flist-book-for-user%2F&#038;format=xml" />--%>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->


</head>
<script>
    $(function () {
        getUserFullName();
    });

    function checkLength() {
        var new_pass = document.getElementById("new_pass");
        var confirm_pass = document.getElementById("confirm_pass");
        if (new_pass.value.length >= 8 && confirm_pass.value.length >= 8) {
            if (new_pass.value == confirm_pass.value) {
                getUserID();
            } else {
                alert("make sure new password and confirm password equal");
            }

        }
        else {
            alert("make sure the input is between 5-10 characters long");
        }
    }
    function getUserID() {
        var LoggedUser = mycookie();
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/getUserID",
            data: { LoggedUser: LoggedUser },
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                changePassword(data);
                //alert(data);
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function changePassword(data) {
        var new_pass = $('#new_pass').val();
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/changePassword",
            data: { userID: data, new_pass: new_pass },
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                $('#new_pass').val("");
                $('#confirm_pass').val("");
                alert(data.message);
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
                <a  class="logo">
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
                                <i class="fa fa-list "></i><span>Change Password</span>

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

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/request-book/','') }">
                            <a href="Manage-Reserved-Books.aspx">
                                <i class="fa fa-list"></i><span>Manage Reserved Books</span>
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
                <h1>Change Password
            <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li class="active">Change Password</li>
                </ol>
            </section>


            <section class="content" style="min-height: 100%;">
                <div class="box box-default" ng-controller="changePasswordCtrl">
                    <div class="box-header with-border">
                    </div>
                    <div class="box-body" style="">
                        <div class="row">
                            <div class="col-md-12">
                                <form class="form-horizontal" method="post" id="lib_password_form" style="width: 94%;">
                                    <input type="hidden" name="action" value="change_password" />
                                    <h3>Change password</h3>
                                    <p>Hints on getting your new password right:</p>
                                    <p>Your new password must be between 8 and 15 characters in length.</p>
                                    <hr />
                                    <div class="form-group">
                                        <label for="first_name" class="col-sm-4 control-label pull-left reset_sm">
                                            New
                                            Password
                                        </label>
                                        <div class="col-sm-8">
                                            <input name="new_pass" id="new_pass" ng-model="frm_ChangePassData.new_pass"
                                                placeholder="New Password" class="form-control fix_radius pull-left"
                                                type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="first_name" class="col-sm-4 control-label pull-left reset_sm">
                                            Confirm
                                            New Pasword
                                        </label>
                                        <div class="col-sm-8">
                                            <input name="confirm_pass" id="confirm_pass"
                                                ng-model="frm_ChangePassData.confirm_pass" placeholder="Confirm Password"
                                                class="form-control fix_radius pull-left" type="text">
                                        </div>
                                    </div>


                                    <hr />


                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="button" onclick="checkLength();" class="btn btn-primary fix_radius pmd-ripple-effect pull-right">
                            <span class="fa fa-floppy-o"></span>Change Password
                        </button>
                    </div>
                </div>
            </section>
        </div>


        <script type='text/javascript' src='https://www.library-management.com/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>

        
            
                
           
</body>
</html>


