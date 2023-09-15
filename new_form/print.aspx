<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="new_form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Collect Your Ticket</title>
    <style>
        .table-responsive{
            margin:100px;
        }
        #ldate {
            display: none;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
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
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    let fname = JSON.parse(localStorage.getItem("fname"));
                    let lname = JSON.parse(localStorage.getItem("lname"));
                    let splace = JSON.parse(localStorage.getItem("splace"));
                    let fplace = JSON.parse(localStorage.getItem("fplace"));
                    let dob = JSON.parse(localStorage.getItem("dob"));
                    let sDate = JSON.parse(localStorage.getItem("sDate"));
                    let fDate = JSON.parse(localStorage.getItem("fDate"));
                    let tripType = JSON.parse(localStorage.getItem("tripType"));
                    let Gender = JSON.parse(localStorage.getItem("Gender"));
                    let age = JSON.parse(localStorage.getItem("age"));
                    var table = document.getElementById('userInfoTable').getElementsByTagName('tbody')[0];
                    var newRow = table.insertRow(table.rows.length);
                    var cell1 = newRow.insertCell(0);
                    cell1.innerHTML = table.rows.length;
                    var cell2 = newRow.insertCell(1);
                    cell2.innerHTML = fname + " " + lname;
                    var cell3 = newRow.insertCell(2);
                    cell3.innerHTML = age;
                    var cell4 = newRow.insertCell(3);
                    cell4.innerHTML = Gender;
                    var cell5 = newRow.insertCell(4);
                    cell5.innerHTML = splace;
                    var cell6 = newRow.insertCell(5);
                    cell6.innerHTML = fplace;
                    var cell7 = newRow.insertCell(6);
                    cell7.innerHTML = tripType;
                    var cell8 = newRow.insertCell(7);
                    cell8.innerHTML = sDate;
                    var cell9 = newRow.insertCell(8);
                    cell9.innerHTML = fDate;
                    cell9.setAttribute("id", "ldate")
                    if (fDate) {
                        document.getElementById("ldate").style.display = "flex";
                        cell9.style.display = "flex";
                    }
                });
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

        </div>
    </form>
</body>
</html>
