<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="new_form.booking" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Booking </title>
     <style>
         #myNavbar ul{
             margin-left:70%; 
         }
         .form-check-label{
          text-align:left;
         }
         .form-check-input{
             margin-left:18px;
         }
         .ticket{
             border:solid black 1px;
             border-radius:10px;
             background-color:#85c965;
             width:40%;
             place-items:center;
             position:absolute;
             top:70%;
             left:50%;
             transform:translate(-50%,-50%);
             text-align:center;
         }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="info" class="info" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-black">
            <div class="container-fluid">
                <a herf="#" class="navbar-brand">
                    <img src="https://cdn.dribbble.com/users/35877/screenshots/1880493/media/7829921718c871238573c9887bad75ec.jpg?resize=400x300&vertical=center" alt="Buslogo" width="45" height="45" />
                    Book Your Bus</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="myNavbar">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active" style="cursor: pointer"><a herf="/booking.html" class="nav-link">Home</a></li>
                        <li class="nav-item" style="cursor: pointer"><a herf="/registration.aspx" class="nav-link">Booking</a></li>
                        <li class="nav-item" style="cursor: pointer"><a herf="/registration.aspx" class="nav-link">Profile</a></li>
                        <li class="nav-item" style="cursor: pointer"><a herf="/registration.aspx" class="nav-link">Offers</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <div class="ticket">
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" for="first_name">First Name :</span>
                    <input type="text" class="form-control" id="first_name" placeholder="Enter First Name" aria-label="Username" aria-describedby="addon-wrapping" />
                </div>
            </div>
            <br />
            <br />
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" for="last_name">Last Name :</span>
                    <input type="text" class="form-control" id="last_name" placeholder="Enter Last Name " aria-label="Username" aria-describedby="addon-wrapping" />
                </div>
            </div>
            <br />
            <br />
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" for="orgin">Orgin :</span>
                    <input type="text" class="form-control" id="orgin" placeholder="Enter Orgin place " aria-label="Username" aria-describedby="addon-wrapping">
                </div>
            </div>
            <br />
            <br />
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" for="destination">Destination :</span>
                    <input type="text" class="form-control" id="destination" placeholder="Enter Destination place " aria-label="Username" aria-describedby="addon-wrapping" />
                </div>
            </div>
            <br />
            <br />
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" for="dob">Date Of Birth :</span>
                    <input type="date" class="form-control" id="dob" aria-label="Username" aria-describedby="addon-wrapping" />
                </div>
            </div>
            <br />
            <br />
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" for="date">Orgin Date :</span>
                    <input type="date" class="form-control" id="Orgindate" aria-label="Username" aria-describedby="addon-wrapping" />
                </div>
            </div>
            <br />
            <br />
            <div class="form">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" id="gender" for="gender">Gender :</span>
                    <div class="input-group-text">
                        <input class="form-check-input mt-0" type="radio" name="gender" value="male" aria-label="Radio button for following text input" />Male
                    <input class="form-check-input mt-0" type="radio" name="gender" value="female" aria-label="Radio button for following text input" />Female
                    <input class="form-check-input mt-0" type="radio" name="gender" value="others" aria-label="Radio button for following text input" />Others
                    </div>
                </div>
                <br />
                <br />
                <div class="form">
                    <button class="btn btn-primary" type="submit" value="submit">Submit</button>
                </div>
            </div>
        </div>
    </form>
    <script>
         debugger
        var orgin_Date = document.getElementById('Orgindate');
        var dob = document.getElementById('dob');
        // Create a new Date object for the current date
        var currentDate = new Date();
        // Format the current date to 'YYYY-MM-DD' for the min attribute
        var year = currentDate.getFullYear();
        var month = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // Add 1 to month because it's zero-based
        var day = currentDate.getDate().toString().padStart(2, '0');
        var formattedDate = year + "-" + month + "-" + day;
        // Set the min and max attributes to the formatted date strings
        orgin_Date.setAttribute("min", formattedDate);
        currentDate.setMonth(currentDate.getMonth() + 3);
        var maxDate = currentDate.toISOString().slice(0, 10);
        // Calculate the maximum date (three months from now)
        orgin_Date.setAttribute("max", maxDate);
        dob.setAttribute("max", formattedDate);
        document.getElementById("info").addEventListener("submit", function (event) {
            event.preventDefault(); // Prevent the form from submitting in the default way
            // console.log("pass")
            // debugger
            var firstName = document.getElementById('first_name').value;
            var lastName = document.getElementById('last_name').value;
            var orgin = document.getElementById('orgin').value;
            var Destination = document.getElementById('destination').value;
            var dob = document.getElementById('dob').value;
            var orginDate = document.getElementById('Orgindate').value;
            var genderElements = document.getElementsByName("gender");
            var Gender = "";
            for (var i = 0; i < genderElements.length; i++) {
                if (genderElements[i].checked) {
                    Gender = genderElements[i].value;
                    break;
                }
            }
            if (!lastName && !firstName && !orginDate && !Destination && !dob && !orgin) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your Detials',
                });
                return;
            }
            if (!firstName) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your First Name!',
                });
                return;
            }
            if (!lastName) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your Last Name!',
                });
                return;
            }
            if (!orgin) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please select your Orgin!',
                });
                return;
            }
            if (!Destination) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please select your Destination!',
                });
                return;
            }
            if (!dob) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your Date of Birth!',
                });
                return;
            }
            if (!orginDate) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your Orgin Date!',
                });
                return;
            }
            if (!Gender) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please select your Gender!',
                });
                return;
            }
            var formData = new FormData(this);
            // Redirect to another page
            window.location.href = "/print.aspx";
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
