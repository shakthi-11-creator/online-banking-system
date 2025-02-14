<!DOCTYPE html>
<html>
<head>
    <title>Fixed Deposit (FD) Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image:url('images/fixeddeposit.jpg');
             background-position:center;
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed; 
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
         
            margin-top:20px;
            font-size: 2rem;
            font-weight: bold;
            color:#00ff00;
        }

        p {
            font-size: 1rem;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 80%;
            max-width: 600px;
            border-collapse: collapse;
            margin: 0 auto 20px;
            background-color: #fff;
            color: #333;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        thead {
            background-color: #00ff00;
            color: #fff;
        }

        th, td {
            padding: 15px;
            text-align: left;
            font-size: 1rem;
        }

        tr:nth-child(even) {
            background-color: #f4f4f9;
        }

        tr:hover {
            background-color: #d6e4f0;
        }

        a {
            color: #00ff00; ;
            text-decoration: underline;
            font-weight: bold;
        }

        a:hover {
            text-decoration: none;
            color: #FFFF66;
        }
    </style>
</head>
<body>
    <h1>Fixed Deposit (FD) Details</h1>
    <p>Check the interest rates for Fixed Deposits based on tenure:</p>

    <table>
        <thead>
            <tr>
                <th>Tenure</th>
                <th>Interest Rate</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>6 months</td>
                <td>5.5% per annum</td>
            </tr>
            <tr>
                <td>1 year</td>
                <td>6.0% per annum</td>
            </tr>
            <tr>
                <td>2 years</td>
                <td>6.5% per annum</td>
            </tr>
            <tr>
                <td>5 years</td>
                <td>7.0% per annum</td>
            </tr>
        </tbody>
    </table>

    <p>If you wish to create a Fixed Deposit, <a href="fdCreation.jsp">click here to apply</a>.</p>
</body>
</html>
