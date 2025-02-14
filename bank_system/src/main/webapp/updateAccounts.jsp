<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Account</title>
    <style>
        body {
  background-image:url('images/backbank.jpg');
  background-position:center;
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed;
        }

        .container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input, select, button {
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="text"], input[type="number"], select {
            width: 100%;
            margin-bottom: 10px;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        button:active {
            background-color: #388e3c;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Account Details</h2>
        <form action="UpdateAccountServlet" method="post">
            <!-- Account ID (hidden field, as it should not be editable) -->
            <input type="hidden" name="accountId" value="<%= request.getParameter("accountId") %>">
            
            <!-- Account Holder Name -->
            <div class="form-group">
                <label for="accountHolderName">Account Holder Name:</label>
                <input type="text" id="accountHolderName" name="accountHolderName" 
                       value="<%= request.getParameter("accountHolderName") %>" required>
            </div>

            <!-- Balance -->
            <div class="form-group">
                <label for="balance">Balance:</label>
                <input type="number" id="balance" name="balance" 
                       value="<%= request.getParameter("balance") %>" required>
            </div>
            
            <!-- Joint Account -->
            <div class="form-group">
                <label for="jointAccount">Joint Account (Yes/No):</label>
                <select id="jointAccount" name="jointAccount" required>
                    <option value="No" <%= "No".equals(request.getParameter("jointAccount")) ? "selected" : "" %>>No</option>
                    <option value="Yes" <%= "Yes".equals(request.getParameter("jointAccount")) ? "selected" : "" %>>Yes</option>
                </select>
            </div>

            <!-- Joint Account Holder Name -->
            <div class="form-group">
                <label for="jointAccountHolderName">Joint Account Holder Name (if any):</label>
                <input type="text" id="jointAccountHolderName" name="jointAccountHolderName" 
                       value="<%= request.getParameter("jointAccountHolderName") %>">
            </div>
            
            <!-- Created At -->
            <div class="form-group">
                <label for="createdAt">Created At:</label>
                <input type="text" id="createdAt" name="createdAt" 
                       value="<%= request.getParameter("createdAt") %>" required>
            </div>

            <!-- Submit Button -->
            <button type="submit">Update Account</button>
        </form>
    </div>
</body>
</html>
