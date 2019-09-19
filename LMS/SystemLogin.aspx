<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SystemLogin.aspx.cs" Inherits="LMS.Login1" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="Js/cookiefile.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script>

    function login() {
        var user_id = $('#userName').val();
        var password = $('#password').val();

        $.ajax({
            type: "POST",
            url: "api/access/login",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ user_id: user_id, password: password }),
            dataType: "json",
            success: function (data) {
                //fill_table(data);
                $('#error_message').text('');
                if (data.status == 0) {
                    $('#error_message').text(data.message);
                    setCookie('erptk', 'COOKEIE VALUE NOT SET', 0);
                }
                else {
                    setCookie('erptk', data.para1, 1);
                    get_user_role();
                    //window.location.replace("default.aspx");
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function get_user_role() {
            var LoggedUser = mycookie();
            $.ajax({
                type: "GET",
                url: "api/myapi/getUserRole",
                contentType: "application/json; charset=utf-8",
                data: { LoggedUser: LoggedUser },
                dataType: "json",
                success: function (data) {
                    if (data == "Admin") { 
                        window.location.replace("Dashboard.aspx");
                    } else if (data == "Student") {
                        window.location.replace("ListBookForUser.aspx");
                    } else {
                    }

                },
                error: function (request) {
                    handle_error(request);
                },
                beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
            });

        }
</script>


<section class="login-block">
    <div class="container">
        <div class="row">
            <div class="col-md-4 login-sec">
                <h2 class="text-center">Login Now</h2>
                <form class="login-form">
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="text-uppercase">Username</label>
                        <input type="text" class="form-control" placeholder="" id="userName">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-uppercase">Password</label>
                        <input type="password" class="form-control" placeholder="" id="password">
                    </div>


                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">
                            <small>Remember Me</small>
                            <div style="color: red;"><span id="error_message"></span></div>
                        </label>
                        <input class="w3-button w3-block w3-blue w3-section w3-padding" id="reset" type="button" onclick="login()" value="Login" />
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <a href="ForgetPassword.aspx"><small >Forget password?</small></a>
                            <div style="color: red;"><span id="error_message1"></span></div>
                        </label>
                        
                    </div>
                </form>

            </div>
            <div class="col-md-8 banner-sec">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid" src="/img/login.jpg" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
</section>
</asp:Content>
<style>
    @import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");

    .login-block {
        background: #DE6262; /* fallback for old browsers */
        background: -webkit-linear-gradient(to bottom, #FFB88C, #DE6262); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to bottom, #FFB88C, #DE6262); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        float: left;
        width: 100%;
        padding: 50px 0;
    }

    .container {
        background: #fff;
        border-radius: 10px;
        box-shadow: 15px 20px 0px rgba(0,0,0,0.1);
    }

    .carousel-inner {
        border-radius: 0 10px 10px 0;
    }

    .carousel-caption {
        text-align: left;
        left: 5%;
    }

    .login-sec {
        padding: 50px 30px;
        position: relative;
    }

        .login-sec .copy-text {
            position: absolute;
            width: 80%;
            bottom: 20px;
            font-size: 13px;
            text-align: center;
        }

            .login-sec .copy-text i {
                color: #FEB58A;
            }

            .login-sec .copy-text a {
                color: #E36262;
            }

        .login-sec h2 {
            margin-bottom: 30px;
            font-weight: 800;
            font-size: 30px;
            color: #DE6262;
        }

            .login-sec h2:after {
                content: " ";
                width: 100px;
                height: 5px;
                background: #FEB58A;
                display: block;
                margin-top: 20px;
                border-radius: 3px;
                margin-left: auto;
                margin-right: auto
            }

    .btn-login {
        background: #DE6262;
        color: #fff;
        font-weight: 600;
    }

    .banner-text {
        width: 70%;
        position: absolute;
        bottom: 40px;
        padding-left: 20px;
    }

        .banner-text h2 {
            color: #fff;
            font-weight: 600;
        }

            .banner-text h2:after {
                content: " ";
                width: 100px;
                height: 5px;
                background: #FFF;
                display: block;
                margin-top: 20px;
                border-radius: 3px;
            }

        .banner-text p {
            color: #fff;
        }
</style>

</html>
