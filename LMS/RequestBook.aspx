<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestBook.aspx.cs" Inherits="LMS.RequestBook" %>


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
    <title>Request Book &#8211; LMS a WordPress Theme</title>
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
    <link rel="canonical" href="https://www.library-management.com/request-book/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=21' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Frequest-book%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Frequest-book%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->


</head>
<script>
    var userID;
    $(function () {
        getRequestedBookDetails();
        getUserID1();
        $("#searchBook").keypress(function (e) {
            //if (e.which == 13) {
                var searchBook = document.getElementById('searchBook').value;
                if (searchBook != "") {
                    $.ajax({
                        type: "GET",
                        url: "api/myapi/getRequestedBook",
                        async: false,
                        contentType: "application/json; charset=utf-8",
                        data: { searchBook: searchBook },
                        dataType: "json",
                        success: function (data) {
                            load_getRequestedBookDetails(data);
                        },
                        error: function (request) {
                            handle_error(request);
                        },
                        beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
                    });
                }
            //}
        });
    });
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
                addRequestBook(data);
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function getUserID1() {
        var LoggedUser = mycookie();
        jQuery.ajax({
            type: "GET",
            url: "api/myapi/getUserID",
            data: { LoggedUser: LoggedUser },
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                userID = data;
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function addRequestBook(data) {
        var bookName = document.getElementById('book_name').value;
        var bookURL = document.getElementById('book_url').value;
        var BookDesc = document.getElementById('note_on_book').value;
        jQuery.ajax({
            type: "POST",
            url: "api/myapi/addRequestBook",
            data: JSON.stringify({
                bookName: bookName, bookURL: bookURL, BookDesc: BookDesc, studentID: data
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                alert(data.message);
                getRequestedBookDetails();
            },
            failure: function (response) {
                alert(response.d);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });


    }
    function getRequestedBookDetails() {
        $.ajax({
            type: "GET",
            url: "api/myapi/getRequestedBookDetails",
            contentType: "application/json; charset=utf-8",
            data: {},
            dataType: "json",
            success: function (data) {
                load_getRequestedBookDetails(data);

            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function load_getRequestedBookDetails(data) {
        $("#bookRequestDetailsTable").find("tr:gt(0)").remove();
        $('#bookRequestDetailsTable').append('<tr><td colspan="9"> </td> </tr>');
        for (var i = 0; i < data.length; i++) {
            $('#bookRequestDetailsTable').append('<tr><td>' + data[i].bookName + '</td><td><a href="' + data[i].bookURL + '">Visit</a</td><td>' + data[i].BookDesc + '</td><td>' + data[i].first_name + ' ' + data[i].last_name + '</td><td>' + data[i].LikeCount + '</td><td>' + data[i].requestedDate + '</td><td><button onclick=\'addlike("' + data[i].requestID + '","' + userID + '")\' class="btn btn-success"><i class="far fa-thumbs-up"></i> </button></td></tr>');
        }
    }
    function addlike(requestID, studentID) {
        $.ajax({
            type: "GET",
            url: "api/myapi/addLike",
            contentType: "application/json; charset=utf-8",
            data: { requestID: requestID, studentID: studentID },
            dataType: "json",
            success: function (data) {
                alert(data.message);
                getRequestedBookDetails();
            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
</script>
<body class="page-template page-template-requestbook page-template-requestbook-php page page-id-21 logged-in hold-transition skin-blue sidebar-mini">
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
                                    <span class="hidden-xs">Tasha R  Tyson</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="user-header">
                                        <img
                                            ng-src="{{'https://www.library-management.com/wp-content/uploads/2018/04/IMG_1524749478-150x150.jpeg' || 'https://www.library-management.com/wp-content/themes/library/img/avatar.png'}}"
                                            class="img-circle" alt="User Image">

                                        <p>
                                            Tasha R  Tyson - Users
                  <small>Member since Apr 2018</small>
                                        </p>
                                    </li>


                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="https://www.library-management.com/users-profile-page/" style="height: 37px;"
                                                class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="https://www.library-management.com/wp-login.php?action=logout&amp;redirect_to=https%3A%2F%2Fwww.library-management.com&amp;_wpnonce=4a1ecb0896" style="height: 37px;"
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
                            <p>Tasha R  Tyson</p>
                            <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                        </div>
                    </div>


                    <ul class="sidebar-menu">

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/list-book-for-user/','') }">
                            <a href="https://www.library-management.com/list-book-for-user/">
                                <i class="fa fa-list"></i><span>Dashboard</span>
                            </a>
                        </li>
                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/change-password/','') }">
                            <a href="https://www.library-management.com/change-password/">
                                <i class="fa fa-graduation-cap "></i><span>Change Password</span>

                            </a>
                        </li>


                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-issued-book-for-users/','') }">
                            <a href="https://www.library-management.com/manage-issued-book-for-users/">
                                <i class="fa fa-list"></i><span>View Issued Books</span>
                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/manage-return-archives-user/','') }">
                            <a href="https://www.library-management.com/manage-return-archives-user/">
                                <i class="fa fa-list"></i><span>View All Archive Books</span>
                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/request-book/','') }">
                            <a href="https://www.library-management.com/request-book/">
                                <i class="fa fa-list"></i><span>Submit Book Request</span>
                            </a>
                        </li>

                        <li ng-class="{'treeview':true,active: isActive('https://www.library-management.com/about-software/','') }">
                            <a href="https://www.library-management.com/about-software/">
                                <i class="fa fa-clock-o "></i><span>About Software</span>
                            </a>
                        </li>


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
                    <li class="active">Request Books</li>
                </ol>
            </section>


            <section class="content" style="min-height: 100%;">


                <div class="box box-default">
                    <div class="box-header with-border">
                    </div>

                    <div class="box-body" style="" ng-controller="viewUserRequestBookCtrl">
                        <div class="row">

                            <div class="col-md-9">
                                <form class="form-horizontal" id="lib_request_book">


                                    <input type="hidden" name="action" value="request_book">

                                    <div class="form-group">
                                        <label for="book_name" class="col-sm-3 control-label pull-left reset_sm">
                                            Book Name
                                    *</label>
                                        <div class="col-sm-9">
                                            <input name="book_name" id="book_name"
                                                placeholder="Full Book Name .Check Below To See If Same Book Has Already Been Requested"
                                                class="form-control" type="text">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="book_url" class="col-sm-3 control-label pull-left reset_sm">
                                            Google/Amazon
                                    Book Url</label>
                                        <div class="col-sm-9">
                                            <input name="book_url" id="book_url" placeholder="Book Url If Any"
                                                class="form-control" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="note_on_book" class="col-sm-3 control-label pull-left reset_sm">
                                            Note
                                    *</label>
                                        <div class="col-sm-9">
                                            <textarea rows="5" class="form-control fix_radius" id="note_on_book"
                                                name="note_on_book"
                                                placeholder="Why you required this book ? A Small note is required."></textarea>

                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-9">
                                            <button onclick="getUserID()"
                                                class="btn btn-primary fix_radius pull-right pmd-ripple-effect">
                                                <span
                                                    class="fa fa-floppy-o"></span>&nbsp;Submit Request
                                            </button>
                                        </div>
                                    </div>


                                </form>
                                <input type="text" ng-model="search.BookName" id="searchBook" placeholder="Type Book Name To Search For Before Placing Request.." class="form-control">
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped tbluser" id="bookRequestDetailsTable"
                                        style="font-size: small; margin-bottom: 0px; overflow-x: scroll;">
                                        <thead>
                                            <tr>
                                                <th style="display: none;">?</th>
                                                <th class="" style="width: 15%;">Book Name</th>
                                                <th class="">Url</th>
                                                <th class="" style="width: 45%;">BookDesc</th>
                                                <th style="display: none;">User ID</th>
                                                <th class="" style="width: 11%;">Person Name</th>
                                                <th class="">Likes</th>
                                                <th class="" style="width: 9%;">Added On</th>
                                                <th class="" style="width: 80px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td colspan="9">
                                                    <input type="text" ng-model="search.BookName"
                                                        placeholder="Type Book Name To Search For Before Placing Request.."
                                                        class="form-control">
                                                </td>
                                            </tr>
                                            <tr ng-repeat="x in request_dataset | filter:search"
                                                ng-class="{'approved_book': x.Approved==1}">
                                                <td style="display: none;">{{x.Id}}</td>
                                                <td>{{x.BookName}}</td>
                                                <td><a target="_blank" href="{{x.BookUrl}}">Visit</a></td>
                                                <td>{{x.Notes}}</td>
                                                <td style="display: none;">{{x.UserId}}</td>
                                                <td>{{x.UserName}}</td>
                                                <td>{{x.Likes}}</td>
                                                <td>{{x.DateAdded}}</td>
                                                <td>
                                                    <button class="btn btn-success" ng-click="like(x)">
                                                        <i class="fa fa-thumbs-o-up"
                                                            aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
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

<!-- Adding Javascript -->
<script type="text/javascript">
    jQuery(document).ready(function ($) {


    });
</script>
