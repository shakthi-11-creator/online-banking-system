<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FD Account Creation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-image:url('images/fix2.avif');
        }
        h1 {
            color: #00CC00;
            text-align:center;
        }
        form {
            width: 400px;
            height:450px;
            margin: 20px auto;
            background: #00CC00;
            padding: 40px;
            border: 1px solid #ddd;
            border-radius: 5px;
            position:relative;
           right:350px;
           
    
        }
        label {
            display: block;
            margin: 10px 0 5px;
            color:#FFFF99;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>FD Account Creation</h1>
    <form action="FDServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="amount">Deposit Amount:</label>
        <input type="number" id="amount" name="amount" required>

        <label for="tenure">Tenure:</label>
        <select id="tenure" name="tenure" required>
            <option value="6 months">6 months</option>
            <option value="1 year">1 year</option>
            <option value="2 years">2 years</option>
            <option value="5 years">5 years</option>
        </select>
        <button type="submit">Create FD</button>
    </form>
</body>
</html>

