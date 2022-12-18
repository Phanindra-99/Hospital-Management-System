<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MedCare Hospital</title>
    <style>
        body{
            background-color: #F6F6F6; 
            margin: 0;
            padding: 0;
        }
        h1,h2,h3,h4,h5,h6{
            margin: 0;
            padding: 0;
        }
        p{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 80%;
            margin-right: auto;
            margin-left: auto;
        }
        .brand-section{
           background-color: #0d1033;
           padding: 10px 40px;
        }
        .logo{
            width: 50%;
        }

        .row{
            display: flex;
            flex-wrap: wrap;
        }
        .col-6{
            width: 50%;
            flex: 0 0 auto;
        }
        .text-white{
            color: #fff;
        }
        .Payment Details{
            float: right;
            text-align: right;
        }
        .body-section{
            padding: 16px;
            border: 1px solid gray;
        }
        .heading{
            font-size: 20px;
            margin-bottom: 08px;
        }
        .sub-heading{
            color: #262626;
            margin-bottom: 05px;
        }
        table{
            background-color: #fff;
            width: 100%;
            border-collapse: collapse;
        }
        table thead tr{
            border: 1px solid #111;
            background-color: #f2f2f2;
        }
        table td {
            vertical-align: middle !important;
            text-align: center;
        }
        table th, table td {
            padding-top: 08px;
            padding-bottom: 08px;
        }
        .table-bordered{
            box-shadow: 0px 0px 5px 0.5px gray;
        }
        .table-bordered td, .table-bordered th {
            border: 1px solid #dee2e6;
        }
        .text-right{
            text-align: end;
        }
        .w-20{
            width: 20%;
        }
        .float-right{
            float: right;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="brand-section">
            <div class="row">
                <div class="col-6">
                    <h1 class="text-white">MedCare Hospital</h1>
                </div>
                <div class="col-6">
                    <div class="Payment-details">
                        <p class="text-white">Bill No:55</p>
                        <p class="text-white">Purchased Date:04/07/2022</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="body-section">
            <div class="row">
                <div class="col-6">
                    <p class="sub-heading">Patient Name:</p>
                    <p class="sub-heading">Address:</p>
                    <p class="sub-heading">Phone Number:</p>
                </div>
                <c:forEach var="payment" items="${payment11.rows}">
                <tr>
                        <td>c:out value="${Patient_Name}"/></td>
                        <td>c:out value="${Address}"/></td>
                        <td>c:out value="${Mobile_Number}"/></td>
                    </tr>
                 </c:forEach>
                <div class="col-6">
                    <p class="sub-heading">Doctor Name:</p>
                       <tr>
                        <td>c:out value="${Doctor_Name}"/></td>
                        </tr>
                    <p class="sub-heading">Doctor Id:58975</p>
                </div>
            </div>
        </div>

        <div class="body-section">
            <h3 class="heading">Bill</h3>
            <br>
            <table class="table-bordered">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th class="w-15">Price</th>
                        <th class="w-15">Quantity</th>
                        <th class="w-15">GrandTotal</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-right">Sub Total</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-right">Grand Total</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <h3 class="heading">The Amount Paid is:</h3>
            <h4 class="heading">Payment Status:Paid</h4>
        </div>      
    </div>      

</body>
</html>
    