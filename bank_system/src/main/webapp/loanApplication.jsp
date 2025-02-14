<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Application</title>
    <style>
        
    body {
        font-family: Arial, sans-serif;
        margin: 40px;
        background-image:url('images/bkl1.avif');
        background-size:cover;
        display: flex;
        justify-content: flex-end; 
    }

    h1 {
        color: #F5C26B;
        text-align: center;
        position:relative;
        left:360px;
        top:-60px;
    }

    form {
        width: 400px; 
        height:550px;
        background: #F5C26B;
        padding: 40px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-right: 70px; 
    }

    label {
        display: block;
        margin: 12px 0 6px;
        font-weight: bold;
        color:white;
    }

    input, select, button {
        width: 100%;
        padding: 12px;
        margin: 6px 0 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    input:focus, select:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 4px rgba(0, 123, 255, 0.5);
    }

    button {
        background-color: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
        
    
</head>
<body>
    <h1>Loan Application</h1>
    <form action="LoanServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required>

        <label for="loanType">Loan Type:</label>
        <select id="loanType" name="loanType" required>
            <option value="Personal Loan">Personal Loan</option>
            <option value="Home Loan">Home Loan</option>
            <option value="Car Loan">Car Loan</option>
        </select>
        <label for="amount">Loan Amount:</label>
        <input type="number" id="amount" name="amount" required>
        <button type="submit">Submit Application</button>
    </form>
</body>
</html>
