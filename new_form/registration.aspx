<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="new_form.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RIGISTRATION FORM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <style>
        @import url('https://fonts.googleapis.com/css2?family=Inspiration&family=Poppins:wght@300;400;500;700&display=swap');

        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    width: 100vw;
    height: 100vh;
    background-color: #3d3d3d;
    display: grid;
    place-items: center;
}
.container {
    width: 500px;
    background-color: 2d3436;
    margin-bottom:30px;
    box-shadow:#db6a40 0px 5px 20px 20px;

}

.container h3 {
    color: orangered;
    text-align:center;
    text-transform:uppercase;
    margin-bottom:10px;

 }
.form-group{
    color:#777;
    padding:10px;
    margin-bottom:10px;
}

    .form-group label {
        margin-bottom: 2px;
        color: #ee5b24;
        font-weight: 500;
    }
    .gender {
        margin-bottom: 2px;
        color: #ee5b24;
        font-weight: 500;
        padding-left:10px;
    }

.rad_btn {
    color: #fff;
}


.form button {
    margin-bottom: 15px;
    width: 70%;
    border: solid 2px #ee5b24;
    border-radius: 5px;
    text-transform: uppercase;
    color: #fff;
    background-color: #ee5b24;
    font-weight:600;
    margin-left: 70px;
    margin-top:30px;
    cursor:pointer;
}
.form-group input {
        background-color: white;
        width:100%;
        padding:10px;
        outline: none;
        border: solid 2px #ee5b24;
        border-radius: 5px;
        text-transform: capitalize;
        font-weight: 300;
        color: #333;
    }

.form-group select {
    background-color: white;
    width: 100%;
    padding: 10px;
    outline: none;
    border: solid 2px #ee5b24;
    border-radius: 5px;
    text-transform: capitalize;
    font-weight: 300;
    color: #333;
}

table {
    color: white;
    border: solid 2px orangered;
    margin-top:200px;
}

    table,tr, th {
        border: solid 2px orangered;
        border-collapse: collapse;
        align-content: center;
        padding: 7px 20px;
        margin: 0px;
    }

       table,tr, td {
       border: solid 2px orangered;
       border-collapse: collapse;
       align-content: center;
       padding: 7px 20px;
       margin: 0px;
   }

    </style>
</head>
<body>
        <div class="container">
    <form id="form" class="form" runat="server">
            <h3>Registration</h3>

            <div class="form-group">
                <label for="first_name">First Name :</label>
                <input type="text" id="first_name" placeholder="ENTER YOUR FIRST NAME"/>
            </div>
            <div class="form-group">
                <label for="last_name">Last Name :</label>
                <input type="text" id="last_name" placeholder="ENTER YOUR LAST NAME" />
            </div>
            <div class="form-group">
                <label for="dob">Date Of Birth :</label>
                <input type="date" id="dob" />
            </div>

              <div>

                <label class="gender">Gender:</label>
                <input type="radio" id="male" name="gender" value="Male">
                <label for="male" class="rad_btn">Male</label>
                <input type="radio" id="female" name="gender" value="Female">
                <label for="female" class="rad_btn">Female</label>
                <input type="radio" id="other" name="gender" value="Other">
                <label for="other" class="rad_btn">Other</label><br><br>

            </div>

            <div class="form-group">
                <label for="state">State :</label>

                <select id="state" name="state" >
                    <option name="state" value="">select a state</option>
                    <option name="state" value="tamil nadu">Tamil Nadu</option>
                    <option name="state" value="kerala">Kerala</option>
                    <option name="state" value="Bihar">Bihar</option>
                    <option name="state" value="Goa">Goa</option>
                    <option name="state" value="Maharashtra">Maharashtra</option>
                    <option name="state" value="Karnataka">Karnataka</option>
                    <option name="state" value="Andhra Pradesh">Andhra Pradesh</option>
                    <option name="state" value="Gujarat">Gujarat</option>
                    <option name="state" value="West Bengal">West Bengal</option>
                    <option name="state" value="Assam">Assam</option>
                    <option name="state" value="Haryana">Haryana</option>

                </select>
            </div>
            <div class="form-group">

                <label for="city">City:</label>
                <select id="city" name="city" disabled >
                </select><br><br>

            </div>

            <div class="form-group">
            
                <label for="phone_number">Phone Number:</label>
                <input type="tel" id="phone_number" name="phone_number" pattern="[0-9]{10}" ><br>

            </div>
            <button class="form_group" type="submit" value="submit">Submit</button>

    </form>
            </div>
    <div>
    <table border="1" id="userInfoTable">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th> 
            <th>Date of Birth</th>
            <th>State</th>
            <th>City</th>
            <th>Phone Number</th>
        </tr>
    </table>

</div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
   
<script>
    document.getElementById('form').addEventListener('submit', function (e) {
        e.preventDefault();

        // debugger
        var firstName = document.getElementById('first_name').value;
        var lastName = document.getElementById('last_name').value;
       // var Gender = document.getElementsByName("gender").value;
        var dob = document.getElementById('dob').value;
        var state = document.getElementById('state').value;
        var city = document.getElementById('city').value;
        var phoneNumber = document.getElementById('phone_number').value;


        var genderElements = document.getElementsByName("gender");
        var Gender = "";

        for (var i = 0; i < genderElements.length; i++) {
            if (genderElements[i].checked) {
                Gender = genderElements[i].value;
                break;
            }
        }

       // debugger

        if (!lastName && !firstName && !Gender && !dob && !state && !city && !phoneNumber) {
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

        if (!Gender) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select your Gender!',
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

        if (!state) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select your State!',
            });
            return;
        }

        if (!city) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select your City!',
            });
            return;
        }

        if (!phoneNumber) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your Phone Number!',
            });
            return;
        }

 


        var table = document.getElementById('userInfoTable').getElementsByTagName('tbody')[0];
        var newRow = table.insertRow(table.rows.length);

        var cell1 = newRow.insertCell(0);
        cell1.innerHTML = firstName;

        var cell2 = newRow.insertCell(1);
        cell2.innerHTML = lastName;

        var cell3 = newRow.insertCell(2);
        cell3.innerHTML = Gender;

        var cell4 = newRow.insertCell(3);
        cell4.innerHTML = dob;

        var cell5 = newRow.insertCell(4);
        cell5.innerHTML = state;

        var cell6 = newRow.insertCell(5);
        cell6.innerHTML = city;

        var cell7 = newRow.insertCell(6);
        cell7.innerHTML = phoneNumber;

        document.getElementById('form').reset();

        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: 'Successfully registered!',
        });
    });

    var citiesByState = {
        "tamil nadu": ["Chennai", "Tiruchirappalli", "Salem", "Madurai", "Coimbatore"],
        "kerala": ["Thiruvananthapuram", "Kochi", "Kozhikode", "Alappuzha", "Thrissur"],
        "Bihar": ["Patna", "Muzaffarpur", "Buxar", "Gaya", "Purnia"],
        "Goa": ["Panaji", "Mormugao", "Mapusa", "Margao", "Canacona"],
        "Maharashtra": ["Mumbai", "Nagpur", "Nashik", "Jalna", "Nandurbar"],
        "Karnataka": ["Shivamogga", "Tumakuru", "Mangaluru", "Bengaluru", "Hubballi"],
        "Andhra Pradesh": ["Anantapur", "Vijayawada", "Kurnool", "Rajamahendravaram", "Visakhapatnam"],
        "Gujarat": ["Ahmedabad", "Surat", "Vadodara", "Patan", "Rajkot"],
        "West Bengal": ["Kolkata", "Siliguri", "Darjeeling", "Durgapur", "Purulia"],
        "Assam": ["Guwahati", "Silchar", "Tezpur", "Jorhat", "Nagaon"],
        "Haryana": ["Gurugram", "Hisar", "Ambala", "Faridabad", "Karnal"]

    };

    document.getElementById('state').addEventListener('change', function () {
        var citySelect = document.getElementById('city');
        var selectedState = this.value;

        if (selectedState) {
            citySelect.disabled = false;
            citySelect.innerHTML = '<option value="">Select a City</option>';

            citiesByState[selectedState].forEach(function (city) {
                var option = document.createElement('option');
                option.value = city;
                option.text = city;
                citySelect.appendChild(option);
            });
        } else {
            citySelect.disabled = true;
            citySelect.innerHTML = '<option value="">Select a State First</option>';
        }
    });

  //   document.getElementById("state").addEventListener("change", populateCities);
</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>

