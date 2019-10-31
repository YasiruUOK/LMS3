<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBook.aspx.cs" Inherits="LMS.AddBook" %>

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
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="Js/cookiefile.js"></script>
    <%--<script type='text/javascript' src='https://www.library-management.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>--%>
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
    <script type='text/javascript' src='Js/custom.js'></script>
    <script type='text/javascript' src='Js/ng-file-upload-shim.js'></script>
    <script type='text/javascript' src='Js/ng-file-upload.js'></script>
    <script type='text/javascript' src='Js/custom_ang.js'></script>  <%--Functions--%>
    <link rel='https://api.w.org/' href='https://www.library-management.com/wp-json/' />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.library-management.com/xmlrpc.php?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.library-management.com/wp-includes/wlwmanifest.xml" />
    <meta name="generator" content="WordPress 4.9.8" />
    <link rel="canonical" href="https://www.library-management.com/add-book/" />
    <link rel='shortlink' href='https://www.library-management.com/?p=6' />
    <link rel="alternate" type="application/json+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fadd-book%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://www.library-management.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.library-management.com%2Fadd-book%2F&#038;format=xml" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

</head>
<script>
    var bookID;
    $(function () {
        bookID = getParameterByName('bookID');
        getBookDetails();
        getUserFullName();
    });
    function getBookDetails() {
        $.ajax({
            type: "GET",
            url: "api/myapi/getBookDetailsFromBookID",
            contentType: "application/json; charset=utf-8",
            data: { bookID: bookID },
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
        $("#book_isbn").val(data[0].isbnCode);
        $("#book_author").val(data[0].author);
        $("#book_title").val(data[0].bookTitle);
        $("#book_category").val(data[0].bookCategory);
        $("#book_publisher").val(data[0].publisher);
        $("#book_url").val(data[0].bookURL);
        $("#book_price").val(data[0].price);
        $("#book_qty").val(data[0].qty);
        $("#book_desc").val(data[0].bookDescription);
    }
    function update_book_details() {
        var isbnInput = document.getElementById('book_isbn').value;
        var authorInput = document.getElementById('book_author').value;
        var titleInput = document.getElementById('book_title').value;
        var book_category = document.getElementById('book_category').value;
        var publisherInput = document.getElementById('book_publisher').value;
        var book_url = document.getElementById('book_url').value;
        var book_upload_img = document.getElementById('book_upload_img').value;
        var book_upload_pdf = document.getElementById('book_upload_pdf').value;
        var book_external_url = document.getElementById('book_external_url').value;
        var book_price = document.getElementById('book_price').value;
        var book_qty = document.getElementById('book_qty').value;
        var book_desc = document.getElementById('book_desc').value;
        if (book_qty != "" && book_price != "") {
            jQuery.ajax({
                type: "POST",
                url: "api/myapi/updateBookDetails",
                data: JSON.stringify({
                    bookID: bookID, bookTitle: titleInput, isbnCode: isbnInput, author: authorInput, publisher: publisherInput, price: book_price, bookCategory: book_category, bookURL: book_url, bookImage: book_upload_img, bookPDF: book_upload_pdf, bookExternalURL: book_external_url, qty: book_qty, bookDescription: book_desc
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {
                    alert(data.message);
                },
                failure: function (response) {
                    alert(response.d);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });
        } else {
            alert("Please check textboxes empty or not");
        }
        
    }
    function getParameterByName(name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, '\\$&');
        var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, ' '));
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
<body class="page-template page-template-addbook page-template-addbook-php page page-id-6 logged-in hold-transition skin-blue sidebar-mini">
    <div class="wrapper" id="style-5">
        <div ng-controller="sideBarCtrl">
            <header class="main-header">

                <a  class="logo">

                    <span class="logo-mini"><b>LMS</b></span>

                    <span class="desktop-lg"><b>Master Panel </b></span>
                </a>

                <nav class="navbar navbar-static-top">

                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                           <%-- <li class="dropdown notifications-menu">
                                <a href="https://www.library-management.com/view-request-book-data/">
                                    <i class="fa fa-bell
                                        0"></i>
                                    <span class="label label-warning">{{cnt_not_approved}}</span>
                                </a>
                            </li>--%>
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
                                            <%--<div class="pull-left">
                                                <a href="https://www.library-management.com/update-profile/"
                                                    class="btn btn-default btn-flat" style="height: 37px;">Profile</a>
                                            </div>
                                            <div class="pull-left">
                                                <a target="_blank" href="https://www.library-management.com"
                                                    class="btn btn-default btn-flat" style="height: 37px;">FrondEnd</a>
                                            </div>--%>
                                            <div class="pull-left">
                                                <a href="https://www.library-management.com/wp-login.php?action=logout&amp;redirect_to=https%3A%2F%2Fwww.library-management.com&amp;_wpnonce=b335042daa"
                                                    class="btn btn-default btn-flat" style="height: 37px;">Sign out</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <%--<li>
                                <a href="https://www.library-management.com/other-settings/"><i class="fa fa-cogs"></i></a>
                            </li>--%>
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
        <div class="content-wrapper">
            <section class="content-header">
                <h1>Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li class="active">Update Book</li>
                </ol>
            </section>

            <section class="content" style="min-height: 100%;" ng-controller="AddBookCtrl">
                <form class="form-horizontal" id="book_add_form" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-3 col-sm-12">
                            <img ng-src="{{book_src || 'https://www.library-management.com/wp-content/themes/library/img/259x340.png'}}"
                                class="img-responsive" alt="Book Cover" width="100%">
                        </div>
                        <div class="col-md-9 col-sm-12">
                            <div class="tab-content shadow" style="border: 0; padding: 0;">
                                <div class="tab-pane active">
                                    <div class="panel panel-custom">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <strong>Update Book</strong>
                                            </div>
                                        </div>
                                        <div class="panel-body form-horizontal">
                                            <input type="hidden" name="action" value="add_book_data">
                                            <input type="hidden" name="book_src" id="book_src">
                                            <!--            <input type="hidden" name="attach_bill_id" id="attach_bill_id">-->
                                            <input type="hidden" name="book_goo_id" id="book_goo_id">
                                            <div class="form-group mb0 col-sm-6">
                                                <label>
                                                    ISBN *<a class="book_sht_add"
                                                        style="position: absolute; margin-top: -18px; right: -15px;"
                                                        target="_blank"
                                                        tooltips
                                                        tooltip-template="Open google books."
                                                        tooltip-side="bottom"
                                                        href="https://books.google.com">
                                                        <i class="fa fa-link" aria-hidden="true"></i>
                                                    </a>
                                                </label>

                                                <input name="book_isbn" id="book_isbn" placeholder="Enter ISBN and Press TAB"
                                                    ng-model="book_isbn" ng-blur="look_for_book()"
                                                    class="form-control isbn_txt" type="text">
                                            </div>
                                            <div class="form-group mb0 col-sm-6">
                                                <label>Author Name</label>

                                                <input name="book_author" id="book_author" ng-model="book_author"
                                                    placeholder="Enter Author Name" class="form-control" type="text">
                                            </div>
                                            <div class="form-group mb0 col-sm-12">
                                                <label>Book Title *</label>

                                                <input name="book_title" id="book_title" ng-model="book_title"
                                                    placeholder="Enter Book Title" class="form-control" type="text">
                                            </div>

                                            <div class="form-group mb0 col-sm-6">
                                                <label>Category *</label>

                                                <input name="book_category" tooltips
                                                    tooltip-template="Generally categories most of the books.Since it will become the menu in the front end.Make it short and simple."
                                                    tooltip-side="bottom" id="book_category" ng-model="book_category"
                                                    placeholder="Enter Category" class="form-control" type="text">
                                            </div>
                                            <div class="form-group mb0 col-sm-6">
                                                <label>Publisher</label>

                                                <input name="book_publisher" id="book_publisher" ng-model="book_publisher"
                                                    placeholder="Enter Publisher Name" class="form-control" type="text">
                                            </div>

                                            <div class="form-group mb0 col-sm-12">
                                                <label>Google Book Url</label>
                                                <input name="book_url" id="book_url" ng-model="book_url"
                                                    placeholder="Google Book Preview Will Auto Populate here" tooltips
                                                    tooltip-template="Google Book Preview Will Auto Populate here if there are no preview available then you can upload pdf book below."
                                                    tooltip-side="top" class="form-control fix_radius pull-left"
                                                    style="width: 94%; height: 37px;" type="text" readonly>
                                                <button class="btn btn-primary fix_radius pull-right" ng-click="visitUrl()" style="width: 5%;">
                                                    <i class="fa fa-external-link" aria-hidden="true"></i>
                                                </button>
                                            </div>


                                            <!-- <div class="form-group">
                                                <label for="book_url" class="col-sm-2 control-label">Book Url</label>
                                                <div class="col-sm-8">
                                                    <input name="book_url" id="book_url" ng-model="book_url" placeholder="Eg : https://drive.google.com/open?id=0BwiX2HTj2EuFaURvUWcxTERjblU" tooltips tooltip-template="Google Book Preview Will Auto Populate here if there are no preview available then you can upload book in your Gdrive & paste the link here."  tooltip-side="top" class="form-control fix_radius pull-left" style="width: 91%;height: 37px;" type="text">
                                                    <button class="btn btn-primary fix_radius pull-right" ng-click="visitUrl()"><i class="fa fa-external-link" aria-hidden="true"></i></button>
                                                </div>
                                            </div> -->

                                            <div class="form-group mb0 col-sm-6">
                                                <label>Upload Book Img</label>

                                                <input type="file" class="form-control" id="book_upload_img" name="book_upload_img" tooltips
                                                    tooltip-template="Upload image if no google image preview availabe.">
                                            </div>
                                            <div class="form-group mb0 col-sm-6">
                                                <label>Upload Pdf</label>

                                                <input type="file" class="form-control" id="book_upload_pdf" name="book_upload_pdf" tooltips
                                                    tooltip-template="Upload pdf if no preview availabe."
                                                    tooltip-side="bottom">
                                            </div>
                                            <div class="form-group mb0 col-sm-12">
                                                <label>External Url</label>

                                                <input name="book_external_url" id="book_external_url" ng-model="book_external_url"
                                                    placeholder="Enter exteral url" class="form-control fix_radius" type="text" tooltips
                                                    tooltip-template="When you enter the external url the user will be redirected to this link instead of a preview."
                                                    tooltip-side="bottom">
                                            </div>
                                            <div class="form-group mb0 col-sm-6">
                                                <label>Price *</label>

                                                <input name="book_price" id="book_price" ng-model="book_price"
                                                    placeholder="Enter Price" class="form-control fix_radius" type="text">
                                            </div>
                                            <div class="form-group mb0 col-sm-6">
                                                <label>Quantity *</label>

                                                <input type="number" id="book_qty" name="book_qty" ng-model="book_qty"
                                                    placeholder="Enter Book Quantity" class="form-control fix_radius">
                                            </div>
                                            <div class="form-group mb0 col-sm-12">
                                                <label>Book Desc</label>

                                                <textarea rows="4" id="book_desc" class="form-control" ng-model="book_desc"
                                                    name="book_desc" placeholder="Enter Book Description"></textarea>

                                            </div>
                                            <div class="form-group md0 col-sm-12" style="padding-right: 0px;">
                                                <button type="button" onclick="update_book_details();" class="btn btn-primary fix_radius pmd-ripple-effect pull-right">
                                                    <span class="fa fa-floppy-o"></span>Update Book
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </div>
        <!-- </div> -->
        <script type='text/javascript' src='https://www.library-management.com/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>

        
            
                
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

