<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Loan Information</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
           font-family: Arial, sans-serif;
        background-color: #F5C26B;
        }
        h1 {
            color: #fff;
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
        }
        .card img {
            height: 200px;
            object-fit: cover;
        }
        .card-title {
            color: #007bff;
        }
        .card-body ul {
            padding-left: 20px;
        }
        .card:hover, .card:active {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .card:active {
            transform: scale(1);
        }
    </style>
</head>
<body>
    <h1>Loan Information</h1>
    <p class="text-center">We offer a variety of loans to suit your needs. Explore the details of our loans below:</p>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="images/personalloan1.jpg" class="card-img-top" alt="Personal Loan">
                    <div class="card-body">
                        <h5 class="card-title">Personal Loan</h5>
                        <p><strong>Eligibility:</strong></p>
                        <ul>
                            <li>Minimum monthly salary of ₹25,000</li>
                            <li>Age: 21-60 years</li>
                            <li>Good credit score (above 700)</li>
                        </ul>
                        <p><strong>Interest Rate:</strong> 8% per annum</p>
                        <p><strong>Loan Term:</strong> 1 to 5 years</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="images/homeloan.jpg" class="card-img-top" alt="Home Loan">
                    <div class="card-body">
                        <h5 class="card-title">Home Loan</h5>
                        <p><strong>Eligibility:</strong></p>
                        <ul>
                            <li>Minimum monthly salary of ₹40,000</li>
                            <li>Age: 25-65 years</li>
                            <li>Proof of stable income (last 2 years)</li>
                        </ul>
                        <p><strong>Interest Rate:</strong> 6% per annum</p>
                        <p><strong>Loan Term:</strong> Up to 30 years</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="images/carloan.jpg" class="card-img-top" alt="Car Loan">
                    <div class="card-body">
                        <h5 class="card-title">Car Loan</h5>
                        <p><strong>Eligibility:</strong></p>
                        <ul>
                            <li>Minimum monthly salary of ₹30,000</li>
                            <li>Age: 21-60 years</li>
                            <li>Valid driving license</li>
                        </ul>
                        <p><strong>Interest Rate:</strong> 7% per annum</p>
                        <p><strong>Loan Term:</strong> 1 to 7 years</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center mt-4">
            <p>If you meet the eligibility criteria for any of these loans, feel free to <a href="loanApplication.jsp">apply online</a>.</p>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
