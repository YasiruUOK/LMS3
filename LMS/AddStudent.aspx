<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="LMS.AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="Js/cookiefile.js"></script>
    <title></title>
</head>
<script>

    $(document).ready(function () {
        $("#datepicker-group").datepicker({
            format: "yyyy/mm/dd",
            todayHighlight: true,
            autoclose: true,
            clearBtn: true
        });
    });

    function get_facultyNames() {
        $.ajax({
            type: "GET",
            url: "api/myapi/getFacultyName",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                document.getElementById("chitdate").value = data;

                getCentreDetails();
            },
            error: function (request) {
                handle_error(request);
            },
            beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
        });
    }
    function add_student_details() {

        var studentID = $('#studentIDInput').val();
        var nameWithInitials = $('#nameWithInitialsInput').val();
        var fullName = $('#fullNameInput').val();
        var courseName = $('#courseNameInput').val();
        var departmentName = $('#departmentNameInput').val();
        var facultyName = $('#facultyNameInput').val();
        var contactNumber = $('#contactNumberInput').val();
        var email = $('#emailInput').val();
        var gender;
        if (document.getElementById('gridRadios1').checked) {
            gender = "Male";
        } else {
            gender = "Female";
        }
        var address = $('#inputAddress').val();
        var address2 = $('#inputAddress2').val();
        var city = $('#inputCity').val();
        var state = $('#inputState').val();
        var zip = $('#inputZip').val();
        var mebershipEndingDate = $('#membershipEndingDate').val();

        $.ajax({
            type: "POST",
            url: "api/myapi/addStudentDetails",
            data: JSON.stringify({
                studentID: studentID, nameWithInitials: nameWithInitials, fullName: fullName, courseName: courseName, departmentName: departmentName, facultyName: facultyName, contactNumber: contactNumber, email: email, gender: gender, address: address, address2: address2, city: city, state: state, zip: zip, mebershipEndingDate: mebershipEndingDate
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

    }

    
</script>

<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Add a Student</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>

        <div class="col-md-2">
            <label for="bookIDLable">Student ID</label>
            <input class="form-control" type="text" id="studentIDInput">
        </div>
        <div class="col-md-4">
            <label for="titleLable">Name with Initials</label>
            <input type="text" class="form-control" id="nameWithInitialsInput" placeholder="">
        </div>
        <div class="col-md-8">
            <label for="titleLable">Full Name</label>
            <input type="text" class="form-control" id="fullNameInput" placeholder="">
        </div>
        <div class="col-md-4">
            <label for="titleLable">Faculty Name</label>
            <input type="text" class="form-control" id="facultyNameInput" placeholder="">
        </div>
        <div class="col-md-4">
            <label for="titleLable">Department Name</label>
            <input type="text" class="form-control" id="departmentNameInput" placeholder="">
        </div>
        <div class="col-md-4">
            <label for="titleLable">Course Name</label>
            <input type="text" class="form-control" id="courseNameInput" placeholder="">
        </div>
        <div class="col-md-4">
            <label for="titleLable">Contact Number</label>
            <input type="text" class="form-control" id="contactNumberInput" placeholder="">
        </div>
        <div class="col-md-4">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="emailInput" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <fieldset class="col-md-4">
            <div class="row">
                <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
                <div class="col-sm-10">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                        <label class="form-check-label" for="gridRadios1">
                            Male
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            Female
                        </label>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="col-md-4">
            <label for="inputAddress">Address</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
        </div>
        <div class="col-md-4">
            <label for="inputAddress2">Address 2</label>
            <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
        </div>
        <div class="col-md-8">
            <div class="form-group col-md-6">
                <label for="inputCity">City</label>
                <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
                <label for="inputState">District</label>
                <input type="text" class="form-control" id="inputState" placeholder="">
            </div>
            <div class="form-group col-md-2">
                <label for="inputZip">Zip</label>
                <input type="text" class="form-control" id="inputZip">
            </div>
        </div>
        <div class="col-md-4">
            <label for="inputCity">Membership Ending Date</label>
            <div id="datepicker-group" class="input-group date" data-date-format="mm-dd-yyyy">
                <input class="form-control" name="data" type="text" id="membershipEndingDate" placeholder="YYYY/MM/DD" />
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>
        </div>
        <button class="w3-btn w3-blue" onclick="add_student_details();" id="submitButton">Submit</button>
    </form>
</body>
</html>
