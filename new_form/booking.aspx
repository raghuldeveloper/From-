<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="new_form.booking" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Booking </title>
     <style>
         #myNavbar ul{
             margin-left:70%; 
         }
         img{
             border-radius:10px;
         }
         .form-check-label{
          text-align:left;
         }
         .form-check-input{
             margin-left:18px;
         }
        /* #updown{
             display:none;
         } */
        .formcard{
            display:block;
            margin:100px;
        }
        .form{
            padding:10px;
        }
         .ticket{
             position:relative;
             margin-top:100px;
             border:solid black 1px;
             border-radius:10px;
             background-color:#85c965;
             width:40%;
             place-items:center;
             position:absolute;
             top:90%;
             left:50%;
             transform:translate(-50%,-50%);
             text-align:center;
         }
         .table-responsive{
             margin-top:1100px;
         }
         #ldate {
            display: none;
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
        <div class="formcard">
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
                        <span class="input-group-text" for="date">start Date :</span>
                        <input type="date" class="form-control" id="Orgindate" onchange="updateMaxEndDate()" aria-label="Username" aria-describedby="addon-wrapping" />
                    </div>
                </div>
                <br />
                <br />
                <div class="form" id="updown">
                    <div class="input-group flex-nowrap">
                        <span class="input-group-text" for="date">Return Date :</span>
                        <input type="date" class="form-control" name="dateRange" id="endDate" aria-label="Username" disabled aria-describedby="addon-wrapping" />
                    </div>
                </div>
                <br />
                <br />
                <div class="form">
                    <div class="input-group flex-nowrap">
                        <span class="input-group-text" id="mode" for="tripType">Trip Type :</span>
                        <div class="input-group-text">
                            <input class="form-check-input mt-0" type="radio" name="tripType" disabled id="singleRadio" value="single" onclick="toggleEndDateField()" aria-label="Radio button for following text input" />Single
                        <input class="form-check-input mt-0" type="radio" name="tripType" disabled id="returnRadio" value="return" onclick="toggleEndDateField()" aria-label="Radio button for following text input" />Up and Down
                        </div>
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
                </div>
                <br />
                <br />
                <div class="form">
                    <button class="btn btn-primary" type="submit" value="submit">Submit</button>
                </div>
            </div>
            <div class="table-responsive">
                <table id="userInfoTable" class="table table-hover table-dark table-striped-columns table-bordered ">
                    <caption>Happy Journey!</caption>
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">NAME</th>
                            <th scope="col">AGE</th>
                            <th scope="col">GENDER</th>
                            <th scope="col">START</th>
                            <th scope="col">END</th>
                            <th scope="col">TRIP TYPE</th>
                            <th scope="col">FROM DATE</th>
                            <th scope="col" id="ldate">RETURN DATE</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                    </tbody>
                </table>
            </div>
        </div>
    </form>
    <script>
        var orgin_Date = document.getElementById('Orgindate');
        var dob = document.getElementById('dob');
        var end_date = document.getElementById('endDate');
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
        end_date.setAttribute("max", maxDate);
        end_date.setAttribute("min", formattedDate);
        // Function to toggle the End Date field's disabled state
        function toggleEndDateField() {
            var returnRadio = document.getElementById("returnRadio");
            var endDateField = document.getElementById("endDate");
            if (returnRadio.checked) {
                endDateField.disabled = false;
                updateMaxEndDate();
            } else {
                endDateField.disabled = true;
            }
        }
        function updateMaxEndDate() {
            radioStart = document.getElementById('singleRadio');
            returnDate = document.getElementById("returnRadio");
            var neworgin_Date = document.getElementById('Orgindate').value;
            if (neworgin_Date) {
                radioStart.disabled = false;
                returnDate.disabled = false;
                // debugger
                // Parse the user input into a Date object
                var orginDate = new Date(neworgin_Date);
                // Format the slected date to 'YYYY-MM-DD' for the min attribute
                var syear = orginDate.getFullYear();
                var smonth = (orginDate.getMonth() + 1).toString().padStart(2, '0'); // Add 1 to month because it's zero-based
                var sday = orginDate.getDate().toString().padStart(2, '0');
                var newDate = syear + "-" + smonth + "-" + sday;
                end_date.setAttribute("max", maxDate);
                end_date.setAttribute("min", newDate);
            } else {
                radioStart.disabled = true;
                returnDate.disabled = true;
            }
        }
        function Clearfields() {
            document.getElementById('info').reset();
        }
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
            var end_date = document.getElementById('endDate').value;
            var tripElement = document.getElementsByName("tripType");
            var trip = "";
            for (var i = 0; i < tripElement.length; i++) {
                if (tripElement[i].checked) {
                    trip = tripElement[i].value;
                    break;
                }
            }
            var genderElements = document.getElementsByName("gender");
            var Gender = "";
            for (var i = 0; i < genderElements.length; i++) {
                if (genderElements[i].checked) {
                    Gender = genderElements[i].value;
                    break;
                }
            }
            //debugger
            var now = new Date();
            var ageDifference = now - new Date(dob);
            // Convert the difference to years
            var age = Math.floor(ageDifference / (365.25 * 24 * 60 * 60 * 1000));
            if (!lastName && !firstName && !orginDate && !Destination && !dob && !orgin && !Gender && !trip) {
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
            // debugger
            if (trip === "return" && !end_date) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your Return Date!',
                });
                return;
            }
            if (!trip) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your Trip Type!',
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
            var table = document.getElementById('userInfoTable').getElementsByTagName('tbody')[0];
            var newRow = table.insertRow(table.rows.length);
            var cell1 = newRow.insertCell(0);
            cell1.innerHTML = table.rows.length;
            var cell2 = newRow.insertCell(1);
            cell2.innerHTML = firstName + " " + lastName;
            var cell3 = newRow.insertCell(2);
            cell3.innerHTML = age;
            var cell4 = newRow.insertCell(3);
            cell4.innerHTML = Gender;
            var cell5 = newRow.insertCell(4);
            cell5.innerHTML = orgin;
            var cell6 = newRow.insertCell(5);
            cell6.innerHTML = Destination;
            var cell7 = newRow.insertCell(6);
            cell7.innerHTML = trip;
            var cell8 = newRow.insertCell(7);
            cell8.innerHTML = orginDate;
            var cell9 = newRow.insertCell(8);
            cell9.innerHTML = end_date;
            cell9.setAttribute("id", "ldate")
            if (end_date) {
                document.getElementById("ldate").style.display = "flex";
                cell9.style.display = "flex";
            }
            if (!end_date) {
                var cell9 = newRow.insertCell(8);
                cell9.innerHTML = "-";
                document.getElementById("ldate").style.display = "flex";

            }
            Swal.fire({
                icon: 'success',
                title: 'success',
                text: 'Collect Your Ticket',
            });
            localStorage.setItem("fname", JSON.stringify(firstName))
            localStorage.setItem("lname", JSON.stringify(lastName))
            localStorage.setItem("splace", JSON.stringify(orgin))
            localStorage.setItem("fplace", JSON.stringify(Destination))
            localStorage.setItem("dob", JSON.stringify(dob))
            localStorage.setItem("sDate", JSON.stringify(orginDate))
            localStorage.setItem("fDate", JSON.stringify(end_date))
            localStorage.setItem("tripType", JSON.stringify(trip))
            localStorage.setItem("Gender", JSON.stringify(Gender))
            localStorage.setItem("age", JSON.stringify(age))
            var formData = new FormData(this);
            setTimeout(function () {
                // Redirect to the next page 
                window.open("/print.aspx", "_blank");
            }, 3000);
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
