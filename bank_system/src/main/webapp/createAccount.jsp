<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #007bff;
    }
    .container {
        margin-top: 30px; /* Reduced margin at the top */
        margin-bottom: 30px; /* Reduced bottom margin */
    }
    h2 {
        margin-bottom: 15px;
        color:#fff;
         /* Reduced bottom margin for heading */
    }
    .form-label {
        margin-bottom: 5px; /* Reduced margin below labels */
    }
    .form-control, .form-select {
        margin-bottom: 10px; /* Reduced margin for input fields */
    }
    .btn {
        margin-top: 10px; /* Small margin on top of button */
    }
    .alert {
        margin-top: 15px; /* Reduced margin for alert box */
    }
</style>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Create a New Account</h2>
    <form action="CreateAccountServlet" method="post" class="bg-light p-4 rounded shadow">
        <div class="mb-3">
            <label for="accountId" class="form-label">Account ID:</label>
            <input type="number" id="accountId" name="accountId" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="accountHolderName" class="form-label">Account Holder Name:</label>
            <input type="text" id="accountHolderName" name="accountHolderName" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="initialDeposit" class="form-label">Initial Deposit:</label>
            <input type="number" id="initialDeposit" name="initialDeposit" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="jointAccount" class="form-label">Joint Account (Yes/No):</label>
            <select id="jointAccount" name="jointAccount" class="form-select" required>
                <option value="No">No</option>
                <option value="Yes">Yes</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="jointAccountHolderName" class="form-label">Joint Account Holder Name (if any):</label>
            <input type="text" id="jointAccountHolderName" name="jointAccountHolderName" class="form-control">
        </div>
        <div class="mb-3">
            <label for="createdAt" class="form-label">Created At:</label>
            <input type="datetime-local" id="createdAt" name="createdAt" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Create Account</button>
    </form>
    <a href="viewAccounts.jsp" class="text-decoration-none">View All Accounts</a>
    <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) { 
    %>
    <div class="alert alert-danger mt-3"><%= errorMessage %></div>
    <% } %>
</div>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
